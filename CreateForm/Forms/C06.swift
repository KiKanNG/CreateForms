//
//  C06.swift
//  CreateForm
//
//  Created by KiKan Ng on 9/10/2018.
//  Copyright © 2018 KiKan Ng. All rights reserved.
//

import Foundation

func C06() -> Form {
    let form = Form(id: "C06", title: "Preventive Maintenance Report of PAU Unit")
    
    do {
        let section = Section(title: "", titleId: "")
        section.addCell(Cell(type: .ShortInput, description: "Supply temperature", descriptionId: "", placeholder: "", unit: .celsius))
        section.addCell(Cell(type: .ShortInput, description: "Supply voltage", descriptionId: "", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Ambient temperature", descriptionId: "", placeholder: "", unit: .celsius))
        section.addCell(Cell(type: .ShortInput, description: "Ambient RH", descriptionId: "", placeholder: "", unit: .percent))
        section.addCell(Cell(type: .ShortInput, description: "Fan motor current", descriptionId: "", placeholder: "", unit: .ampere))
        section.addCell(Cell(type: .ShortInput, description: "Control voltage", descriptionId: "", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Temperature setpoint", descriptionId: "", placeholder: "", unit: .celsius))
        
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Check List", titleId: "")
        section.addCell(Cell(type: .Checkbox, description: "Electrical terminals", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Temperature sensor", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Condensate drip", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Drain properly", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Control panel operation", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Belts (check tension and adjust tension with tension tester, if necessary)", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Ductwork and flexible connections", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Spring isolator", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Emergency push buttons", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Thermostate", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Chilled water motorized value", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Pipe work, valve connection", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Filter cleanliness / direction", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Fan and Fan Motor", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Visual check for duct insulation", descriptionId: "", options: Choices.normal))
        
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