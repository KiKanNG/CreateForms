//
//  U04.swift
//  CreateForm
//
//  Created by KiKan Ng on 9/10/2018.
//  Copyright © 2018 KiKan Ng. All rights reserved.
//

import Foundation

func U04() -> Form {
    let form = Form(id: "U04", title: "Preventive Maintenance Report of Power Distribution System")
    
    do {
        let section = Section(title: "", titleId: "")
        section.addCell(Cell(type: .ShortInput, description: "Phone no.", descriptionId: "", placeholder: "", unit: .none))
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Main Switchboard", titleId: "")
        section.addCell(Cell(type: .Checkbox, description: "General condition including panels, door and nameplates", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Instrumentation & Indication check all meter reading", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Main electrical supply voltage", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Main electrical supply current", descriptionId: "", options: Choices.normal))
        
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Sub-board", titleId: "")
        section.addCell(Cell(type: .Checkbox, description: "General condition including panels, door and nameplates", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "MCB-RCD condition (visual check) for PDUs and DB board", descriptionId: "", options: Choices.normal))
        
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Electrical Appliances & Fittings", titleId: "")
        section.addCell(Cell(type: .Checkbox, description: "Appearance: Inspection for contamination, physical damage, loose hardware", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "General condition", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Power points (visual check)", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Lighting (visual check)", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Switches (visual check wirings are securely mounted on the terminals)", descriptionId: "", options: Choices.normal))
        
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Recording the measurement", titleId: "")
        section.addCell(Cell(type: .ShortInput, description: "L1-L2", descriptionId: "", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "L1-L3", descriptionId: "", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "L2-L3", descriptionId: "", placeholder: "", unit: .volt))
        
        section.addCell(Cell(type: .ShortInput, description: "L1-N", descriptionId: "", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "L2-N", descriptionId: "", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "L3-N", descriptionId: "", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "N-G", descriptionId: "", placeholder: "", unit: .volt))
        
        section.addCell(Cell(type: .ShortInput, description: "L1-Phase", descriptionId: "", placeholder: "", unit: .ampere))
        section.addCell(Cell(type: .ShortInput, description: "L2-Phase", descriptionId: "", placeholder: "", unit: .ampere))
        section.addCell(Cell(type: .ShortInput, description: "L3-Phase", descriptionId: "", placeholder: "", unit: .ampere))

        form.addSection(section)
    }
    
    do {
        let section = Section(title: "", titleId: "")
        section.addCell(Cell(type: .Checkbox, description: "Performance normal, no problem found (if not please verify)", descriptionId: "", options: Choices.yes))
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Remarks / comments", titleId: "")
        section.addCell(Cell(type: .LongInput, description: "", descriptionId: "", placeholder: "input your remarks here", unit: .none))
        form.addSection(section)
    }
    
    return form
}
