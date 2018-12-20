//
//  U10.swift
//  CreateForm
//
//  Created by Jade on 14/12/2018.
//  Copyright © 2018年 KiKan Ng. All rights reserved.
//

import Foundation

func U10() -> Form {
    let form = Form(id: "U10", title: "Transformer Perventive Maintenance")
    
    do {
        let section = Section(title: "Basic information", titleId: "basic_information")
        section.addCell(Cell(type: .TimeDateSelector, description: "Date of service", descriptionId: "date", dateType: .Date))
        section.addCell(Cell(type: .ShortInput, description: "Rating", descriptionId: "rating", placeholder: "", unit: .none))
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Visual Inspection Status", titleId: "visual_inspection_status")
        section.addCell(Cell(type: .YesNo, description: "Inspection for broken, damaged burned components or cable", descriptionId: "inspection_for_broken", option: Choices.twoOptionsOkNotOk))
        section.addCell(Cell(type: .YesNo, description: "Verify the equipment ventilation is normal", descriptionId: "verify_the_equipment_ventilation", option: Choices.twoOptionsOkNotOk))
        section.addCell(Cell(type: .YesNo, description: "Inspection for integrity of battery rack/cabinet", descriptionId: "inspection_for_integrity", option: Choices.twoOptionsOkNotOk))
        section.addCell(Cell(type: .YesNo, description: "General cleaning of the accessible and de-energized area of the equipment", descriptionId: "general_cleaning", option: Choices.twoOptionsOkNotOk))
        
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Transformer Input reading", titleId: "tranformer_input_reading")
        section.addCell(Cell(type: .ShortInput, description: "Voltage L1-L2", descriptionId: "voltage_l1_l2", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Voltage L2-L3", descriptionId: "voltage_l2_l3", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Voltage L1-L3", descriptionId: "voltage_l1_l3", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Current L1", descriptionId: "current_l1", placeholder: "", unit: .ampere))
        section.addCell(Cell(type: .ShortInput, description: "Current L2", descriptionId: "current_l2", placeholder: "", unit: .ampere))
        section.addCell(Cell(type: .ShortInput, description: "Current L3", descriptionId: "current_l3", placeholder: "", unit: .ampere))
        section.addCell(Cell(type: .ShortInput, description: "Frequency", descriptionId: "frequency", placeholder: "", unit: .hertz))
        form.addSection(section)
        
    }
    do {
        let section = Section(title: "Transformer Output reading", titleId: "tranformer_output_reading")
        section.addCell(Cell(type: .ShortInput, description: "Voltage L1-N", descriptionId: "voltage_l1_n", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Voltage L2-N", descriptionId: "voltage_l2_n", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Voltage L3-N", descriptionId: "voltage_l3_n", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Current L1", descriptionId: "current_l1", placeholder: "", unit: .ampere))
        section.addCell(Cell(type: .ShortInput, description: "Current L2", descriptionId: "current_l2", placeholder: "", unit: .ampere))
        section.addCell(Cell(type: .ShortInput, description: "Current L3", descriptionId: "current_l3", placeholder: "", unit: .ampere))
        section.addCell(Cell(type: .ShortInput, description: "Current N", descriptionId: "current_n", placeholder: "", unit: .ampere))
        section.addCell(Cell(type: .ShortInput, description: "Frequency", descriptionId: "frequency", placeholder: "", unit: .hertz))
        form.addSection(section)
        
    }
    
    do {
        let section = Section(title: "Additional remarks", titleId: "additional_remarks")
        section.addCell(Cell(type: .LongInput, description: "Remarks", descriptionId: "remarks", placeholder: "input your remarks here", unit: .none))
        
        form.addSection(section)
    }
    return form
}

