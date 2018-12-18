//
//  U12.swift
//  CreateForm
//
//  Created by KiKan Ng on 14/12/2018.
//  Copyright © 2018 KiKan Ng. All rights reserved.
//

import Foundation

func U12() -> Form {
    let form = Form(id: "U12", title: "PDU Preventive Maintenance")
    
    do {
        let section = Section(title: "Visual Inspection Status", titleId: "visual_inspection_status")
        section.addCell(Cell(type: .Checkbox, description: "Inspection for broken, damaged burned components or cable", descriptionId: "inspection_for_broken", options: Choices.twoOptionsOkNotOk))
        section.addCell(Cell(type: .Checkbox, description: "Verify the equipment ventilation is normal", descriptionId: "verify_the_equipment", options: Choices.twoOptionsOkNotOk))
        section.addCell(Cell(type: .Checkbox, description: "Check alarm log and history records", descriptionId: "check_alarm_log", options: Choices.twoOptionsOkNotOk))
        section.addCell(Cell(type: .Checkbox, description: "General cleaning of the accessible and de-energized area of the equipment", descriptionId: "general_cleaning", options: Choices.twoOptionsOkNotOk))
        section.addCell(Cell(type: .Checkbox, description: "PDU operation status", descriptionId: "pdu_operation_status", options: Choices.twoOptionsOkNotOk))
        
        form.addSection(section)
    }
    
    // Dictionary is not ordered unfortunately
    let sectionIds = ["main_display_l1", "main_display_l2", "main_display_l3"]
    let sectionHeaders = ["Main Display - L1", "Main Display - L2", "Main Display - L3"]
    
    for (pos, header) in sectionHeaders.enumerated() {
        do {
            let section = Section(title: header, titleId: sectionIds[pos])
            section.addCell(Cell(type: .ShortInput, description: "Line voltage", descriptionId: "line_voltage", placeholder: "", unit: .volt))
            section.addCell(Cell(type: .ShortInput, description: "Phase voltage", descriptionId: "phase_voltage", placeholder: "", unit: .volt))
            section.addCell(Cell(type: .ShortInput, description: "Phase current", descriptionId: "phase_current", placeholder: "", unit: .ampere))
            section.addCell(Cell(type: .ShortInput, description: "Output load percentage", descriptionId: "output_load_percentage", placeholder: "", unit: .percent))
            
            
            form.addSection(section)
        }
    }
    
    do {
        let section = Section(title: "Main Display", titleId: "main_display")
        section.addCell(Cell(type: .ShortInput, description: "Neutral current", descriptionId: "neutral_current", placeholder: "", unit: .ampere))
        section.addCell(Cell(type: .ShortInput, description: "System active power", descriptionId: "system_active_power", placeholder: "", unit: .kilovolt))
        section.addCell(Cell(type: .ShortInput, description: "System power factor", descriptionId: "system_power_factor", placeholder: "", unit: .none))
        section.addCell(Cell(type: .ShortInput, description: "System frequency", descriptionId: "system_frequency", placeholder: "", unit: .hertz))
        section.addCell(Cell(type: .ShortInput, description: "System apparent power", descriptionId: "system_apparent_power", placeholder: "", unit: .kilovoltAmps))
        
        form.addSection(section)
    }
    
    for i in 1...28 {
        let sectionIds = ["l1", "l2", "l3"]
        let sectionHeaders = ["L1", "L2", "L3"]
        
        for (pos, header) in sectionHeaders.enumerated() {
            do {
                let sectionId = "branch_circuit_display\(i)_\(sectionIds[pos])"
                let section = Section(title: "Branch Circuit Display Status: ID \(i)-\(header)", titleId: sectionId)
                section.addCell(Cell(type: .ShortInput, description: "Rating", descriptionId: "", placeholder: "", unit: .none))
                section.addCell(Cell(type: .ShortInput, description: "Type", descriptionId: "", placeholder: "", unit: .none))
                section.addCell(Cell(type: .Checkbox, description: "Status", descriptionId: "", options: Choices.onOff))
                section.addCell(Cell(type: .ShortInput, description: "Reading", descriptionId: "", placeholder: "", unit: .ampere))
                
                form.addSection(section)
            }
        }
    }
    
    
    do {
        let section = Section(title: "Additional Remarks", titleId: "additional_remarks")
        section.addCell(Cell(type: .LongInput, description: "Remarks", descriptionId: "remarks", placeholder: "input your remarks here", unit: .none))
        form.addSection(section)
    }
    
    return form
}
