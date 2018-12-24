//
//  C07.swift
//  CreateForm
//
//  Created by Jade on 14/12/2018.
//  Copyright © 2018年 KiKan Ng. All rights reserved.
//

import Foundation

func C07() -> Form {
    let form = Form(id: "C07", title: "Preventive Maintenance Report of Condensing Water Pump, Sump Pump and Chilled Water Pump")
    
    
    do {
        let section = Section(title: "Control Panel", titleId: "control_panel")
        section.addCell(Cell(type: .YesNo, description: "General Condition", descriptionId: "general_condition", option: Choices.normal))
        section.addCell(Cell(type: .YesNo, description: "Instrumentation & Indication", descriptionId: "instrumentation_indication", option: Choices.normal))
        
        form.addSection(section)
    }
    do {
        let section = Section(title: "Condensing Water Pump", titleId: "condensing_water_Pump")
        section.addCell(Cell(type: .ShortInput, description: "Main Operation Current", descriptionId: "main_operation_current", placeholder: "", unit: .ampere))
        section.addCell(Cell(type: .YesNo, description: "Mechanical Seals, Alignment", descriptionId: "mechanical_seals_alignment", option: Choices.normal))
        section.addCell(Cell(type: .YesNo, description: "Couplings and Bearings", descriptionId: "couplings_bearings", option: Choices.normal))
        
        form.addSection(section)
    }
    do {
        let section = Section(title: "Sump Pump", titleId: "sump_pump")
        section.addCell(Cell(type: .ShortInput, description: "Main Operation Current No.1", descriptionId: "main_operation_current_1", placeholder: "", unit: .ampere))
        section.addCell(Cell(type: .ShortInput, description: "Main Operation Current No.2", descriptionId: "main_operation_current_2", placeholder: "", unit: .ampere))
        section.addCell(Cell(type: .YesNo, description: "Condensate Drain of Water Pipe", descriptionId: "condensate_drain_of_water_pipe", option: Choices.normal))
        
        form.addSection(section)
    }
    do {
        let section = Section(title: "Chilled Water Pump", titleId: "chilled_water_pump")
        section.addCell(Cell(type: .ShortInput, description: "Main Operation Current", descriptionId: "main_operation_current", placeholder: "", unit: .ampere))
        section.addCell(Cell(type: .YesNo, description: "Mechanical Seals, Alignment", descriptionId: "mechanical_seals_alignment", option: Choices.normal))
        section.addCell(Cell(type: .YesNo, description: "Couplings and Bearings", descriptionId: "couplings_bearings", option: Choices.normal))
        
        form.addSection(section)
    }
    do {
        let section = Section(title: "Performance", titleId: "performance")
        section.addCell(Cell(type: .YesNo, description: "Performance Normal", descriptionId: "performance_normal", option: Choices.yes))
        form.addSection(section)
    }
    do {
        let section = Section(title: "Remarks / Comment", titleId: "remarks_comment")
        section.addCell(Cell(type: .LongInput, description: "Remarks", descriptionId: "remarks", placeholder: "input your remarks here", unit: .none))
        form.addSection(section)
    }
    
    return form
}
