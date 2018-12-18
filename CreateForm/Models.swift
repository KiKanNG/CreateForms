import Foundation

enum CellType: Int {
    case ShortInput = 0
    case LongInput = 1
    case Checkbox = 2
    case MultiSelectionCheckbox = 3
    case TimeDateSelector = 4
    case Signature = 5
    case YesNo = 6
}

enum DateSelector: Int {
    case Time = 0
    case Date = 1
    case TimeAndDate = 2
}

class Cell: Codable {
    var id: String
    var sequence: Int
    var description: String
    var descriptionId: String
    var inputData: Dictionary<String, String>
    var repeatable: Bool
    var unit: String
    var type: Int
    var data: Dictionary<String, String>
    var nullable: Bool
    
    /**    Do not use this init */
    init(type: CellType, description: String, descriptionId: String, data: Dictionary<String, String>, unit: Unit, repeatable: Bool, nullable: Bool) {
        self.id = "0-0"
        self.sequence = 0
        self.description = description
        self.descriptionId = descriptionId
        self.repeatable = repeatable
        self.unit = unit.rawValue
        self.inputData = ["data": ""]
        self.type = type.rawValue
        self.data = data
        self.nullable = nullable
    }
    
    /**    for Checkbox, MultiSelectionCheckbox Cell Type */
    convenience init(type: CellType, description: String, descriptionId: String, options: Dictionary<String, String>, repeatable: Bool = false, nullable: Bool = true) {
        if type != .Checkbox && type != .MultiSelectionCheckbox { abort() }
        self.init(type: type, description: description, descriptionId: descriptionId, data: options, unit: .none, repeatable: repeatable, nullable: nullable)
    }
    /**    for YesNo Cell Type */
    convenience init(type: CellType, description: String, descriptionId: String, option: Dictionary<String, String>, repeatable: Bool = false, nullable: Bool = true) {
        if type != .YesNo { abort() }
        self.init(type: type, description: description, descriptionId: descriptionId, data: option, unit: .none, repeatable: repeatable, nullable: nullable)
    }
    
    /**    for ShortInput, LongInput Cell Type */
    convenience init(type: CellType, description: String, descriptionId: String, placeholder: String, unit: Unit, repeatable: Bool = false, nullable: Bool = true) {
        if type != .ShortInput && type != .LongInput { abort() }
        self.init(type: type, description: description, descriptionId: descriptionId, data: ["data": placeholder], unit: unit, repeatable: repeatable, nullable: nullable)
    }
    
    /**    for TimeDateSelector Cell Type */
    convenience init(type: CellType, description: String, descriptionId: String, dateType: DateSelector, repeatable: Bool = false, nullable: Bool = true) {
        if type != .TimeDateSelector { abort() }
        self.init(type: type, description: description, descriptionId: descriptionId, data: ["data": "\(dateType.rawValue)"], unit: .none, repeatable: repeatable, nullable: nullable)
    }
    
    /**    for Signature Cell Type */
    convenience init(type: CellType, description: String, descriptionId: String, showSavedSig: Bool, repeatable: Bool = false, nullable: Bool = true) {
        if type != .Signature { abort() }
        self.init(type: type, description: description, descriptionId: descriptionId, data: ["data": "\(showSavedSig)"], unit: .none, repeatable: repeatable, nullable: nullable)
    }
}

class Section: Codable {
    var id: String
    var sequence: Int
    var title: String
    var titleId: String
    var repeatable: Bool
    var cells: [Cell]
    
    init(title: String, titleId: String, repeatable: Bool = false) {
        self.id = "0-0"
        self.sequence = 0
        self.title = title
        self.titleId = titleId
        self.repeatable = repeatable
        self.cells = []
    }
    
    func addCell(_ cell: Cell) {
        let c = cell
        c.sequence = cells.count + 1
        c.id = "\(c.sequence)-\(0)"
        cells.append(c)
    }
}

class Form: Codable {
    var id: String
    var title: String
    var content: [Section]
    
    init(id: String, title: String) {
        self.id = id
        self.title = title
        self.content = []
    }
    
    func addSection(_ section: Section) {
        let s = section
        s.sequence = content.count + 1
        s.id = "\(s.sequence)-\(0)"
        content.append(s)
    }
}
