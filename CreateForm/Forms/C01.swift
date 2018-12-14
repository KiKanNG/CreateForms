//
//  C01.swift
//  CreateForm
//
//  Created by KiKan Ng on 17/8/2018.
//  Copyright © 2018 KiKan Ng. All rights reserved.
//

import Foundation

func C01() -> Form {
    let form = Form(id: "C01", title: "Preventive Maintenance Report of CRAR System")
    
    do {
        let section = Section(title: "Check List", titleId: "")
        section.addCell(Cell(type: .Checkbox, description: "Expansion valve operation", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Cooling valve operation", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Temperature sensor", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Condensate drip", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Components cleaning", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Filter cleaning", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Auto changeover function", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Humidifier water supply", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Cooling function test", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Fan operation", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Control panel operation", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "I.O. card", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Electrical terminals", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Output alarm signal to monitoring system", descriptionId: "", options: Choices.normal))
        
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Records", titleId: "")
        section.addCell(Cell(type: .ShortInput, description: "Supply air temperature", descriptionId: "", placeholder: "", unit: .celsius))
        section.addCell(Cell(type: .ShortInput, description: "Return air temperature", descriptionId: "", placeholder: "", unit: .celsius))
        section.addCell(Cell(type: .ShortInput, description: "Supply air RH", descriptionId: "", placeholder: "", unit: .percent))
        section.addCell(Cell(type: .ShortInput, description: "Return air RH", descriptionId: "", placeholder: "", unit: .percent))
        section.addCell(Cell(type: .ShortInput, description: "Ambient temperature", descriptionId: "", placeholder: "", unit: .celsius))
        section.addCell(Cell(type: .ShortInput, description: "Ambient RH", descriptionId: "", placeholder: "", unit: .percent))
        section.addCell(Cell(type: .ShortInput, description: "Chilled water inlet temperature", descriptionId: "", placeholder: "", unit: .celsius))
        section.addCell(Cell(type: .ShortInput, description: "Condenser water inlet temperature", descriptionId: "", placeholder: "", unit: .celsius))
        section.addCell(Cell(type: .ShortInput, description: "Chilled water outlet temperature", descriptionId: "", placeholder: "", unit: .celsius))
        section.addCell(Cell(type: .ShortInput, description: "Condenser water outlet temperature", descriptionId: "", placeholder: "", unit: .celsius))
        section.addCell(Cell(type: .ShortInput, description: "Chilled water inlet pressure", descriptionId: "", placeholder: "", unit: .pressure))
        section.addCell(Cell(type: .ShortInput, description: "Condenser water inlet pressure", descriptionId: "", placeholder: "", unit: .pressure))
        section.addCell(Cell(type: .ShortInput, description: "Chilled water outlet pressure", descriptionId: "", placeholder: "", unit: .pressure))
        section.addCell(Cell(type: .ShortInput, description: "Condenser water outlet pressure", descriptionId: "", placeholder: "", unit: .pressure))
        section.addCell(Cell(type: .ShortInput, description: "Compressor discharge pressure", descriptionId: "", placeholder: "", unit: .pressure))
        section.addCell(Cell(type: .ShortInput, description: "Compressor suction pressure", descriptionId: "", placeholder: "", unit: .pressure))
        section.addCell(Cell(type: .ShortInput, description: "Main supply voltage (L1)", descriptionId: "", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Main supply voltage (L2)", descriptionId: "", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Main supply voltage (L3)", descriptionId: "", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Control voltage", descriptionId: "", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Supply fan - 1 Current (L1)", descriptionId: "", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Supply fan - 1 Current (L2)", descriptionId: "", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Supply fan - 1 Current (L3)", descriptionId: "", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Supply fan - 2 Current (L1)", descriptionId: "", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Supply fan - 2 Current (L2)", descriptionId: "", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Supply fan - 2 Current (L3)", descriptionId: "", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Heating steps - 1 Current (L1)", descriptionId: "", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Heating steps - 1 Current (L2)", descriptionId: "", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Heating steps - 1 Current (L3)", descriptionId: "", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Heating steps - 2 Current (L1)", descriptionId: "", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Heating steps - 2 Current (L2)", descriptionId: "", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Heating steps - 2 Current (L3)", descriptionId: "", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Boiler humidifier current", descriptionId: "", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Compressor - 1 (L1)", descriptionId: "", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Compressor - 1 (L2)", descriptionId: "", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Compressor - 1 (L3)", descriptionId: "", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Compressor - 2 (L1)", descriptionId: "", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Compressor - 2 (L2)", descriptionId: "", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Compressor - 2 (L3)", descriptionId: "", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Condenser fan current", descriptionId: "", placeholder: "", unit: .volt))
        
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Remarks / comments", titleId: "")
        section.addCell(Cell(type: .LongInput, description: "", descriptionId: "", placeholder: "input your remarks here", unit: .none))
        form.addSection(section)
    }
    
    return form
}
