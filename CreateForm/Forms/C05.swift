//
//  C05.swift
//  CreateForm
//
//  Created by KiKan Ng on 13/12/2018.
//  Copyright © 2018 KiKan Ng. All rights reserved.
//

import Foundation

func C05() -> Form {
    let form = Form(id: "C05", title: "Preventive Maintenance Report of Air-Cooled Chillers")
    
    do {
        let section = Section(title: "Check List", titleId: "")
        section.addCell(Cell(type: .Checkbox, description: "Mechanical condition", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Condenser coil cleaning", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Electrical power supply", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Electrical terminals", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Electrical power cables", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Chilled water temperatures", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Lubrication oil level", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Auto changeover function", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Refrigerant pressures", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Refrigerant temperatures", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Sight glass / Filter dryer", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Controller operation", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Condenser fan operation", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Expansion valve operation", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Output alarm signal to monitoring system", descriptionId: "", options: Choices.normal))
        
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Record", titleId: "")
        section.addCell(Cell(type: .ShortInput, description: "Refrigerant type", descriptionId: "", placeholder: "", unit: .none))
        section.addCell(Cell(type: .ShortInput, description: "Temperature setpoint", descriptionId: "", placeholder: "", unit: .celsius))
        section.addCell(Cell(type: .ShortInput, description: "Ambient temperature", descriptionId: "", placeholder: "", unit: .celsius))
        section.addCell(Cell(type: .ShortInput, description: "Ambient RH", descriptionId: "", placeholder: "", unit: .percent))
        section.addCell(Cell(type: .ShortInput, description: "Chilled water inlet temperature", descriptionId: "", placeholder: "", unit: .celsius))
        section.addCell(Cell(type: .ShortInput, description: "Chilled water outlet temperature", descriptionId: "", placeholder: "", unit: .celsius))
        section.addCell(Cell(type: .ShortInput, description: "Chilled water inlet pressure", descriptionId: "", placeholder: "", unit: .bar))
        section.addCell(Cell(type: .ShortInput, description: "Chilled water outlet pressure", descriptionId: "", placeholder: "", unit: .bar))
        section.addCell(Cell(type: .ShortInput, description: "Chilled water flow rate", descriptionId: "", placeholder: "", unit: .flowRate))
        section.addCell(Cell(type: .ShortInput, description: "Chilled water flow %", descriptionId: "", placeholder: "", unit: .percent))
        section.addCell(Cell(type: .ShortInput, description: "Supply voltage (L1)", descriptionId: "", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Supply voltage (L2)", descriptionId: "", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Supply voltage (L3)", descriptionId: "", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Control voltage", descriptionId: "", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Operating current (L1)", descriptionId: "", placeholder: "", unit: .ampere))
        section.addCell(Cell(type: .ShortInput, description: "Operating current (L2)", descriptionId: "", placeholder: "", unit: .ampere))
        section.addCell(Cell(type: .ShortInput, description: "Operating current (L3)", descriptionId: "", placeholder: "", unit: .ampere))
        section.addCell(Cell(type: .ShortInput, description: "Running current %", descriptionId: "", placeholder: "", unit: .percent))
        section.addCell(Cell(type: .ShortInput, description: "Refrigerant discharge pressure", descriptionId: "", placeholder: "", unit: .bar))
        section.addCell(Cell(type: .ShortInput, description: "Refrigerant suction pressure", descriptionId: "", placeholder: "", unit: .bar))
        section.addCell(Cell(type: .ShortInput, description: "Refrigerant discharge temperature", descriptionId: "", placeholder: "", unit: .celsius))
        section.addCell(Cell(type: .ShortInput, description: "Refrigerant suction temperature", descriptionId: "", placeholder: "", unit: .celsius))
        section.addCell(Cell(type: .ShortInput, description: "Condenser inlet temperature", descriptionId: "", placeholder: "", unit: .celsius))
        section.addCell(Cell(type: .ShortInput, description: "Condenser outlet temperature", descriptionId: "", placeholder: "", unit: .celsius))
        
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Remarks / comments", titleId: "")
        section.addCell(Cell(type: .LongInput, description: "", descriptionId: "", placeholder: "input your remarks here", unit: .none))
        form.addSection(section)
    }
    
    return form
}
