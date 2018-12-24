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
        let section = Section(title: "Basic information", titleId: "basic_information")
        section.addCell(Cell(type: .TimeDateSelector, description: "Date of service", descriptionId: "date", dateType: .Date))
        section.addCell(Cell(type: .ShortInput, description: "Rating (kVA)", descriptionId: "rating_kVA", placeholder: "", unit: .kilovoltAmps))
        section.addCell(Cell(type: .ShortInput, description: "Unit No.", descriptionId: "unit_no", placeholder: "", unit: .kilovoltAmps))
        
        form.addSection(section)
    }
    do {
        let section = Section(title: "Visual Inspection Status", titleId: "visual_inspection_status")
        section.addCell(Cell(type: .YesNo, description: "Inspection for broken, damaged burned components or cable", descriptionId: "inspection_for_broken", option: Choices.twoOptionsOkNotOk))
        section.addCell(Cell(type: .YesNo, description: "Verify the equipment ventilation is normal", descriptionId: "verify_the_equipment", option: Choices.twoOptionsOkNotOk))
        section.addCell(Cell(type: .YesNo, description: "Check alarm log and history records", descriptionId: "check_alarm_log", option: Choices.twoOptionsOkNotOk))
        section.addCell(Cell(type: .YesNo, description: "General cleaning of the accessible and de-energized area of the equipment", descriptionId: "general_cleaning", option: Choices.twoOptionsOkNotOk))
        section.addCell(Cell(type: .YesNo, description: "PDU operation status", descriptionId: "pdu_operation_status", option: Choices.twoOptionsOkNotOk))
        
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
    
//    for i in 1...28 {
//        let sectionIds = ["l1", "l2", "l3"]
//        let sectionHeaders = ["L1", "L2", "L3"]
//
//        for (pos, header) in sectionHeaders.enumerated() {
//            do {
//                let sectionId = "branch_circuit_display\(i)_\(sectionIds[pos])"
//                let section = Section(title: "Branch Circuit Display Status: ID \(i)-\(header)", titleId: sectionId)
//                section.addCell(Cell(type: .ShortInput, description: "Rating", descriptionId: "rating", placeholder: "", unit: .none))
//                section.addCell(Cell(type: .ShortInput, description: "Type", descriptionId: "type", placeholder: "", unit: .none))
//                section.addCell(Cell(type: .OnOff, description: "Status", descriptionId: "status", options: Choices.onOff))
//                section.addCell(Cell(type: .ShortInput, description: "Reading", descriptionId: "reading", placeholder: "", unit: .ampere))
//
//                form.addSection(section)
//            }
//        }
//    }
    do {
        let section = Section(title: "Branch Circuit Display Status", titleId: "branch_circuit_display_status", repeatable : true, maxRepeat: 14 )
        section.addCell(Cell(type: .ShortInput, description: "Rating (L1)", descriptionId: "rating_l1", placeholder: "", unit: .none))
        section.addCell(Cell(type: .ShortInput, description: "Type(L1)", descriptionId: "type_l1", placeholder: "", unit: .none))
        section.addCell(Cell(type: .OnOff, description: "Status(L1)", descriptionId: "status_l1", twoOption: Choices.onOff))
        section.addCell(Cell(type: .ShortInput, description: "Reading(L1)", descriptionId: "reading_l1", placeholder: "", unit: .ampere))
        
        section.addCell(Cell(type: .ShortInput, description: "Rating(L2)", descriptionId: "rating_l2", placeholder: "", unit: .none))
        section.addCell(Cell(type: .ShortInput, description: "Type(L2)", descriptionId: "type_l2", placeholder: "", unit: .none))
        section.addCell(Cell(type: .OnOff, description: "Status(L2)", descriptionId: "status_l2", twoOption: Choices.onOff))
        section.addCell(Cell(type: .ShortInput, description: "Reading(L2)", descriptionId: "reading_l2", placeholder: "", unit: .ampere))
        
        section.addCell(Cell(type: .ShortInput, description: "Rating(L3)", descriptionId: "rating_l3", placeholder: "", unit: .none))
        section.addCell(Cell(type: .ShortInput, description: "Type(L3)", descriptionId: "type_l3", placeholder: "", unit: .none))
        section.addCell(Cell(type: .OnOff, description: "Status(L3)", descriptionId: "status_l3", twoOption: Choices.onOff))
        section.addCell(Cell(type: .ShortInput, description: "Reading(L3)", descriptionId: "reading_l3", placeholder: "", unit: .ampere))
        form.addSection(section)
    }
    

    
    return form
}
