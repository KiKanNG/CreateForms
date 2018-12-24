//
//  U02.swift
//  CreateForm
//
//  Created by KiKan Ng on 9/10/2018.
//  Copyright © 2018 KiKan Ng. All rights reserved.
//

import Foundation

func U02() -> Form {
    let form = Form(id: "U02", title: "ABB Standard UPS Preventive Maintenance")
    
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
        section.addCell(Cell(type: .YesNo, description: "Inspection for broken, damaged burned componemts or cable", descriptionId: "inspection_for_broken", option: Choices.threeOptionsOkNotOk))
        section.addCell(Cell(type: .YesNo, description: "Verify the equipment ventilation is normal", descriptionId: "verify_the_equipment", option: Choices.threeOptionsOkNotOk))
        section.addCell(Cell(type: .YesNo, description: "Inspection for integrity of battery rack/cabinet", descriptionId: "inspection_for_integrity", option: Choices.threeOptionsOkNotOk))
        section.addCell(Cell(type: .YesNo, description: "General cleaning of the accessible and de-engergized area of the equipment", descriptionId: "general_cleaning", option: Choices.threeOptionsOkNotOk))
        
        form.addSection(section)
    }
    
    let sectionHeaders = ["Rectifier Input Status", "Bypass Input Status", "Output Status"]
    let sectionIds = ["rectifier_input_status", "bypass_input_status", "output_status"]
    for (pos,header) in sectionHeaders.enumerated() {
        let section = Section(title: header, titleId: sectionIds[pos])
        section.addCell(Cell(type: .ShortInput, description: "Voltage L1-N (L1-L2)", descriptionId: "volt_l1n", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Voltage L2-N (L2-L3)", descriptionId: "volt_l2n", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Voltage L3-N (L1-L3)", descriptionId: "volt_l3n", placeholder: "", unit: .volt))
        
        if header == "Output Status" {
            section.addCell(Cell(type: .ShortInput, description: "Current L1", descriptionId: "current_l1", placeholder: "", unit: .ampere))
            section.addCell(Cell(type: .ShortInput, description: "Current L2", descriptionId: "current_l2", placeholder: "", unit: .ampere))
            section.addCell(Cell(type: .ShortInput, description: "Current L3", descriptionId: "current_l3", placeholder: "", unit: .ampere))
        }

        section.addCell(Cell(type: .ShortInput, description: "Frequency", descriptionId: "frequency", placeholder: "", unit: .hertz))
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Rectifier Status (Float Charger)", titleId: "rectifier_status")
        section.addCell(Cell(type: .ShortInput, description: "Voltage (+)", descriptionId: "volt_plus", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Voltage (-)", descriptionId: "volt_minor", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Current (+)", descriptionId: "current_plus", placeholder: "", unit: .ampere))
        section.addCell(Cell(type: .ShortInput, description: "Current (-)", descriptionId: "current_minor", placeholder: "", unit: .ampere))
        section.addCell(Cell(type: .ShortInput, description: "Battery runtime (hr)", descriptionId: "battery_runtime_hr", placeholder: "", unit: .hour))
        section.addCell(Cell(type: .ShortInput, description: "Battery runtime (min)", descriptionId: "battery_runtime_min", placeholder: "", unit: .minute))
        
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Inverter Power Status", titleId: "inverter_power_status")
        section.addCell(Cell(type: .ShortInput, description: "App. power (L1)", descriptionId: "app_power_l1", placeholder: "", unit: .kilovoltAmps))
        section.addCell(Cell(type: .ShortInput, description: "App. power (L2)", descriptionId: "app_power_l2", placeholder: "", unit: .kilovoltAmps))
        section.addCell(Cell(type: .ShortInput, description: "App. power (L3)", descriptionId: "app_power_l3", placeholder: "", unit: .kilovoltAmps))
        
        section.addCell(Cell(type: .ShortInput, description: "Real power (L1)", descriptionId: "real_power_l1", placeholder: "", unit: .kilovolt))
        section.addCell(Cell(type: .ShortInput, description: "Real power (L2)", descriptionId: "real_power_l2", placeholder: "", unit: .kilovolt))
        section.addCell(Cell(type: .ShortInput, description: "Real power (L3)", descriptionId: "real_power_l3", placeholder: "", unit: .kilovolt))
        
        section.addCell(Cell(type: .ShortInput, description: "Load percetage (L1)", descriptionId: "load_percetage_l1", placeholder: "", unit: .percent))
        section.addCell(Cell(type: .ShortInput, description: "Load percetage (L2)", descriptionId: "load_percetage_l2", placeholder: "", unit: .percent))
        section.addCell(Cell(type: .ShortInput, description: "Load percetage (L3)", descriptionId: "load_percetage_l3", placeholder: "", unit: .percent))
        
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Battery Discharge Test", titleId: "battery_discharge_test")
        section.addCell(Cell(type: .YesNo, description: "Agreed by customer", descriptionId: "agreed_by_cutomer", option: Choices.agree))
        section.addCell(Cell(type: .ShortInput, description: "Battery discharge voltage", descriptionId: "battery_discharge_volt", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Battery discharge current", descriptionId: "battery_discharge_current", placeholder: "", unit: .ampere))
        section.addCell(Cell(type: .YesNo, description: "Running as normal", descriptionId: "runnung_normal", option: Choices.twoOptionsOkFailed))
        section.addCell(Cell(type: .ShortInput, description: "Time taken", descriptionId: "time_taken", placeholder: "", unit: .minute))
        
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Battery voltage sample measurement", titleId: "battery_volt_sample_measurement", repeatable: true, maxRepeat: 3)
        section.addCell(Cell(type: .ShortInput, description: "Cell no.", descriptionId: "cell_no", placeholder: "", unit: .none))
        section.addCell(Cell(type: .ShortInput, description: "Volt", descriptionId: "volt", placeholder: "", unit: .volt))
        
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Additional remarks", titleId: "additional_remarks")
        section.addCell(Cell(type: .LongInput, description: "UPS normal", descriptionId: "ups_normal", placeholder: "UPS Normal", unit: .none))
        
        form.addSection(section)
    }
    
    return form
}
