import Foundation

enum CellType: Int {
    case ShortInput = 0
    case LongInput = 1
    case Checkbox = 2
    case MultiSelectionCheckbox = 3
    case TimeDateSelector = 4
    case Signature = 5
    case YesNo = 6
    case OnOff = 7
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
    var maxRepeat: Int
    var unit: String
    var type: Int
    var data: Dictionary<String, String>
    var nullable: Bool
    
    /**    Do not use this init */
    init(type: CellType, description: String, descriptionId: String, data: Dictionary<String, String>, unit: Unit, repeatable: Bool, maxRepeat: Int, nullable: Bool) {
        self.id = "0-0"
        self.sequence = 0
        self.description = description
        self.descriptionId = descriptionId
        self.repeatable = repeatable
        self.maxRepeat = maxRepeat
        self.unit = unit.rawValue
        self.inputData = ["data": ""]
        self.type = type.rawValue
        self.data = data
        self.nullable = nullable
    }
    
    /**    for Checkbox, MultiSelectionCheckbox Cell Type */
    convenience init(type: CellType, description: String, descriptionId: String, options: Dictionary<String, String>, repeatable: Bool = false, maxRepeat: Int = -1, nullable: Bool = true) {
        if type != .Checkbox && type != .MultiSelectionCheckbox { abort() }
        self.init(type: type, description: description, descriptionId: descriptionId, data: options, unit: .none, repeatable: repeatable, maxRepeat: maxRepeat, nullable: nullable)
    }
    /**    for YesNo Cell Type */
    convenience init(type: CellType, description: String, descriptionId: String, option: Dictionary<String, String>, repeatable: Bool = false, maxRepeat: Int = -1, nullable: Bool = true) {
        if type != .YesNo { abort() }
        self.init(type: type, description: description, descriptionId: descriptionId, data: option, unit: .none, repeatable: repeatable, maxRepeat: maxRepeat, nullable: nullable)
    }
    /**    for OnOff Cell Type */
    convenience init(type: CellType, description: String, descriptionId: String, twoOption: Dictionary<String, String>, repeatable: Bool = false, maxRepeat: Int = -1, nullable: Bool = true) {
        if type != .OnOff { abort() }
        self.init(type: type, description: description, descriptionId: descriptionId, data: twoOption, unit: .none, repeatable: repeatable, maxRepeat: maxRepeat, nullable: nullable)
    }
    
    /**    for ShortInput, LongInput Cell Type */
    convenience init(type: CellType, description: String, descriptionId: String, placeholder: String, unit: Unit, isNumber: Bool = true, repeatable: Bool = false, maxRepeat: Int = -1, nullable: Bool = true) {
        if type != .ShortInput && type != .LongInput { abort() }
        let isNumberString: String = isNumber ? "1" : "0"
        self.init(type: type, description: description, descriptionId: descriptionId, data: ["data": placeholder, "isNumber": isNumberString], unit: unit, repeatable: repeatable, maxRepeat: maxRepeat, nullable: nullable)
    }
    
    /**    for TimeDateSelector Cell Type */
    convenience init(type: CellType, description: String, descriptionId: String, dateType: DateSelector, repeatable: Bool = false, maxRepeat: Int = -1, nullable: Bool = true) {
        if type != .TimeDateSelector { abort() }
        self.init(type: type, description: description, descriptionId: descriptionId, data: ["data": "\(dateType.rawValue)"], unit: .none, repeatable: repeatable, maxRepeat: maxRepeat, nullable: nullable)
    }
    
    /**    for Signature Cell Type */
    convenience init(type: CellType, description: String, descriptionId: String, showSavedSig: Bool, repeatable: Bool = false, maxRepeat: Int = -1, nullable: Bool = true) {
        if type != .Signature { abort() }
        self.init(type: type, description: description, descriptionId: descriptionId, data: ["data": "\(showSavedSig)"], unit: .none, repeatable: repeatable, maxRepeat: maxRepeat, nullable: nullable)
    }
}

class Section: Codable {
    var id: String
    var sequence: Int
    var title: String
    var titleId: String
    var repeatable: Bool
    var maxRepeat: Int
    var cells: [Cell]

    // inf is represented as -1
    init(title: String, titleId: String, repeatable: Bool = false, hasAccumulatedNumber: Bool = false, maxRepeat: Int = -1) {
        self.id = "0-0"
        self.sequence = 0
        self.title = title
        if hasAccumulatedNumber { self.title += " *i*" }
        self.titleId = titleId
        self.repeatable = repeatable
        self.maxRepeat = maxRepeat
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
