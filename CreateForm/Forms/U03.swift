//
//  U03.swift
//  CreateForm
//
//  Created by KiKan Ng on 9/10/2018.
//  Copyright © 2018 KiKan Ng. All rights reserved.
//

import Foundation

func U03() -> Form {
    let form = Form(id: "U03", title: "ABB Module UPS Preventive Maintenance")
    
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
    
    do {
        let section = Section(title: "Rectifier Input Status", titleId: "rectifier_input_status")
        section.addCell(Cell(type: .ShortInput, description: "Voltage L1-N (L1-L2)", descriptionId: "voltage_l1n", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Voltage L2-N (L2-L3)", descriptionId: "voltage_l2n", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Voltage L3-N (L1-L3)", descriptionId: "voltage_l3n", placeholder: "", unit: .volt))
        
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Bypass Input Status", titleId: "bypass_input_status")
        section.addCell(Cell(type: .ShortInput, description: "Voltage L1-N (L1-L2)", descriptionId: "voltage_l1n", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Voltage L2-N (L2-L3)", descriptionId: "voltage_l2n", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Voltage L3-N (L1-L3)", descriptionId: "voltage_l3n", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Frequency", descriptionId: "frequency", placeholder: "", unit: .hertz))
        
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Battery Discharge Test", titleId: "battery_discharge_test")
        section.addCell(Cell(type: .YesNo, description: "Agreed by customer", descriptionId: "agreed_by_customer", option: Choices.agree))
        section.addCell(Cell(type: .YesNo, description: "Running as normal", descriptionId: "running_normal", option: Choices.twoOptionsOkFailed))
        section.addCell(Cell(type: .ShortInput, description: "Time taken", descriptionId: "time_taken", placeholder: "", unit: .minute))
        
        form.addSection(section)
    }


    do {
        let section = Section(title: "Output Status (UMP)", titleId: "output_status", repeatable : true, maxRepeat: 5 )

        section.addCell(Cell(type: .ShortInput, description: "Voltage L1-N (L1-L2)", descriptionId: "voltage_l1n", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Voltage L2-N (L2-L3)", descriptionId: "voltage_l2n", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Voltage L3-N (L1-L3)", descriptionId: "voltage_l3n", placeholder: "", unit: .volt))
        
        section.addCell(Cell(type: .ShortInput, description: "Current L1", descriptionId: "current_l1", placeholder: "", unit: .ampere))
        section.addCell(Cell(type: .ShortInput, description: "Current L2", descriptionId: "current_l2", placeholder: "", unit: .ampere))
        section.addCell(Cell(type: .ShortInput, description: "Current L3", descriptionId: "current_l3", placeholder: "", unit: .ampere))
        
        section.addCell(Cell(type: .ShortInput, description: "Frequency", descriptionId: "frequency", placeholder: "", unit: .hertz))
        
        section.addCell(Cell(type: .ShortInput, description: "App. power (L1)", descriptionId: "app_power_l1", placeholder: "", unit: .kilovoltAmps))
        section.addCell(Cell(type: .ShortInput, description: "App. power (L2)", descriptionId: "app_power_l2", placeholder: "", unit: .kilovoltAmps))
        section.addCell(Cell(type: .ShortInput, description: "App. power (L3)", descriptionId: "app_power_l3", placeholder: "", unit: .kilovoltAmps))
        
        section.addCell(Cell(type: .ShortInput, description: "Real power (L1)", descriptionId: "real_power_l1", placeholder: "", unit: .kilovolt))
        section.addCell(Cell(type: .ShortInput, description: "Real power (L2)", descriptionId: "real_power_l2", placeholder: "", unit: .kilovolt))
        section.addCell(Cell(type: .ShortInput, description: "Real power (L3)", descriptionId: "real_power_l3", placeholder: "", unit: .kilovolt))
        
        section.addCell(Cell(type: .ShortInput, description: "Load percetage", descriptionId: "load_percetage", placeholder: "", unit: .percent))
        section.addCell(Cell(type: .YesNo, description: "Float charger (common battery)", descriptionId: "float_charge", option: Choices.twoOptionsOkFailed))
        section.addCell(Cell(type: .ShortInput, description: "Voltage", descriptionId: "voltage", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Current", descriptionId: "current", placeholder: "", unit: .ampere))
        section.addCell(Cell(type: .ShortInput, description: "Battery runtime (min)", descriptionId: "battery_runtime", placeholder: "", unit: .minute))
        
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Battery voltage sample measurement", titleId: "battery_volt_sample_measurement", repeatable: true , maxRepeat: 3)
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
