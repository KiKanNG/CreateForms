//
//  C08.swift
//  CreateForm
//
//  Created by KiKan Ng on 9/10/2018.
//  Copyright © 2018 KiKan Ng. All rights reserved.
//

import Foundation

func C08() -> Form {
    let form = Form(id: "C08", title: "Preventive Maintenance Report of Water Detection System")
    
    do {
        let section = Section(title: "Control Panel (Visual Check)", titleId: "")
        section.addCell(Cell(type: .Checkbox, description: "General condition of panels, doors and name plates", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Instrumentation & indication", descriptionId: "", options: Choices.normal))
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Check alarm panel operating condition", titleId: "")
        section.addCell(Cell(type: .Checkbox, description: "Buzzer and silence push button", descriptionId: "", options: Choices.normal))
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Alarm Test", titleId: "")
        section.addCell(Cell(type: .Checkbox, description: "Cable break", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Leakage alarm", descriptionId: "", options: Choices.normal))
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
