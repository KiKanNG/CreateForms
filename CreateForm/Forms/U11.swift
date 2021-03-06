//
//  U11.swift
//  CreateForm
//
//  Created by KiKan Ng on 14/12/2018.
//  Copyright © 2018 KiKan Ng. All rights reserved.
//

import Foundation

func U11() -> Form {
    let form = Form(id: "U11", title: "Static Transfer Switch Preventive Maintenance")
    
    do {
        let section = Section(title: "Basic information", titleId: "basic_information")
        section.addCell(Cell(type: .ShortInput, description: "Phone no.", descriptionId: "phone_no", placeholder: "", unit: .none))
        section.addCell(Cell(type: .TimeDateSelector, description: "Date of service", descriptionId: "date", dateType: .Date))
        section.addCell(Cell(type: .ShortInput, description: "Rating (kw)", descriptionId: "rating_kw", placeholder: "", unit: .kilovolt))
        section.addCell(Cell(type: .ShortInput, description: "Rating (kVA)", descriptionId: "rating_kVA", placeholder: "", unit: .kilovoltAmps))
        section.addCell(Cell(type: .ShortInput, description: "Battery", descriptionId: "battery", placeholder: "", unit: .kilovoltAmps))
        
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Visual Inspection Status", titleId: "visual_inspection_status")
        section.addCell(Cell(type: .YesNo, description: "Inspection for broken, damaged burned components or cable", descriptionId: "inspection_for_broken", option: Choices.threeOptionsOkNotOk))
        section.addCell(Cell(type: .YesNo, description: "Verify the equipment ventilation is normal", descriptionId: "verify_the_equipment", option: Choices.threeOptionsOkNotOk))
        section.addCell(Cell(type: .YesNo, description: "Inspection for cleaniness of cable connections", descriptionId: "inspection_for_cleaniness", option: Choices.threeOptionsOkNotOk))
        section.addCell(Cell(type: .YesNo, description: "General cleaning of the accessible and de-energized area of the equipment", descriptionId: "general_cleaning", option: Choices.threeOptionsOkNotOk))
        
        form.addSection(section)
    }
    
    // Dictionary is not ordered unfortunately
    let sectionIds = ["source_a_input_status", "source_b_input_status", "output_status"]
    let sectionHeaders = ["Source A Input Status", "Source B Input Status", "Output Status"]
    
    for (pos, header) in sectionHeaders.enumerated() {
        do {
            let section = Section(title: header, titleId: sectionIds[pos])
            section.addCell(Cell(type: .ShortInput, description: "Voltage L1N", descriptionId: "voltage_l1n", placeholder: "", unit: .volt))
            section.addCell(Cell(type: .ShortInput, description: "Voltage L2N", descriptionId: "voltage_l2n", placeholder: "", unit: .volt))
            section.addCell(Cell(type: .ShortInput, description: "Voltage L3N", descriptionId: "voltage_l3n", placeholder: "", unit: .volt))
            section.addCell(Cell(type: .ShortInput, description: "Current L1", descriptionId: "current_l1", placeholder: "", unit: .ampere))
            section.addCell(Cell(type: .ShortInput, description: "Current L2", descriptionId: "current_l2", placeholder: "", unit: .ampere))
            section.addCell(Cell(type: .ShortInput, description: "Current L3", descriptionId: "current_l3", placeholder: "", unit: .ampere))
            section.addCell(Cell(type: .ShortInput, description: "Frequency", descriptionId: "frequency", placeholder: "", unit: .hertz))
            
            form.addSection(section)
        }
    }
    
    do {
        let section = Section(title: "Additional Remarks", titleId: "additional_remarks")
        section.addCell(Cell(type: .LongInput, description: "Remarks", descriptionId: "remarks", placeholder: "input your remarks here", unit: .none))
        form.addSection(section)
    }
    
    return form
}
