//
//  U01.swift
//  CreateForm
//
//  Created by KiKan Ng on 9/10/2018.
//  Copyright © 2018 KiKan Ng. All rights reserved.
//

import Foundation

func U01() -> Form {
    let form = Form(id: "U01", title: "UPS Preventive Maintenance")
    
    do {
        let section = Section(title: "", titleId: "")
        section.addCell(Cell(type: .ShortInput, description: "Phone no.", descriptionId: "", placeholder: "", unit: .none))
        section.addCell(Cell(type: .TimeDateSelector, description: "Date of service", descriptionId: "", dateType: .Date))
        
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Visual Inspection Status", titleId: "")
        section.addCell(Cell(type: .Checkbox, description: "Inspection for broken, damaged burned componemts or cable", descriptionId: "", options: Choices.threeOptionsOkNotOk))
        section.addCell(Cell(type: .Checkbox, description: "Verify the equipment ventilation is normal", descriptionId: "", options: Choices.threeOptionsOkNotOk))
        section.addCell(Cell(type: .Checkbox, description: "Inspection for integrity of battery rack/cabinet", descriptionId: "", options: Choices.threeOptionsOkNotOk))
        section.addCell(Cell(type: .Checkbox, description: "General cleaning of the accessible and de-engergized area of the equipment", descriptionId: "", options: Choices.threeOptionsOkNotOk))
        
        form.addSection(section)
    }

    let sectionHeaders = ["Rectifier Input Status", "Bypass Input Status", "Output Status"]
    for header in sectionHeaders {
        let section = Section(title: header, titleId: "")
        section.addCell(Cell(type: .ShortInput, description: "Voltage L1-N (L1-L2)", descriptionId: "", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Voltage L2-N (L2-L3)", descriptionId: "", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Voltage L3-N (L1-L3)", descriptionId: "", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Current L1", descriptionId: "", placeholder: "", unit: .ampere))
        section.addCell(Cell(type: .ShortInput, description: "Current L2", descriptionId: "", placeholder: "", unit: .ampere))
        section.addCell(Cell(type: .ShortInput, description: "Current L3", descriptionId: "", placeholder: "", unit: .ampere))
        section.addCell(Cell(type: .ShortInput, description: "Frequency", descriptionId: "", placeholder: "", unit: .hertz))
        
        form.addSection(section)
    }

    do {
        let section = Section(title: "Rectifier Status (Float Charger)", titleId: "")
        section.addCell(Cell(type: .ShortInput, description: "Voltage", descriptionId: "", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Current", descriptionId: "", placeholder: "", unit: .ampere))
        section.addCell(Cell(type: .ShortInput, description: "Battery runtime (hr)", descriptionId: "", placeholder: "", unit: .hour))
        section.addCell(Cell(type: .ShortInput, description: "Battery runtime (min)", descriptionId: "", placeholder: "", unit: .minute))

        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Inverter Power Status", titleId: "")
        section.addCell(Cell(type: .ShortInput, description: "App. power (L1)", descriptionId: "", placeholder: "", unit: .kilovoltAmps))
        section.addCell(Cell(type: .ShortInput, description: "App. power (L2)", descriptionId: "", placeholder: "", unit: .kilovoltAmps))
        section.addCell(Cell(type: .ShortInput, description: "App. power (L3)", descriptionId: "", placeholder: "", unit: .kilovoltAmps))
        
        section.addCell(Cell(type: .ShortInput, description: "Real power (L1)", descriptionId: "", placeholder: "", unit: .kilovolt))
        section.addCell(Cell(type: .ShortInput, description: "Real power (L2)", descriptionId: "", placeholder: "", unit: .kilovolt))
        section.addCell(Cell(type: .ShortInput, description: "Real power (L3)", descriptionId: "", placeholder: "", unit: .kilovolt))
        
        section.addCell(Cell(type: .ShortInput, description: "Load percetage (L1)", descriptionId: "", placeholder: "", unit: .percent))
        section.addCell(Cell(type: .ShortInput, description: "Load percetage (L2)", descriptionId: "", placeholder: "", unit: .percent))
        section.addCell(Cell(type: .ShortInput, description: "Load percetage (L3)", descriptionId: "", placeholder: "", unit: .percent))
        
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Battery Discharge Test", titleId: "")
        section.addCell(Cell(type: .Checkbox, description: "Agreed by customer", descriptionId: "", options: Choices.agree))
        section.addCell(Cell(type: .Signature, description: "Customer Signature", descriptionId: "", showSavedSig: false))
        section.addCell(Cell(type: .ShortInput, description: "Battery discharge voltage", descriptionId: "", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Battery discharge current", descriptionId: "", placeholder: "", unit: .ampere))
        section.addCell(Cell(type: .Checkbox, description: "Running as normal", descriptionId: "", options: Choices.twoOptionsOkFailed))
        section.addCell(Cell(type: .ShortInput, description: "Time taken", descriptionId: "", placeholder: "", unit: .minute))
        
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Battery voltage sample measurement", titleId: "", repeatable: true)
        section.addCell(Cell(type: .ShortInput, description: "Cell no.", descriptionId: "", placeholder: "", unit: .none))
        section.addCell(Cell(type: .ShortInput, description: "Volt", descriptionId: "", placeholder: "", unit: .volt))
        
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Additional remarks", titleId: "")
        section.addCell(Cell(type: .LongInput, description: "", descriptionId: "", placeholder: "Power Factor", unit: .none))
        section.addCell(Cell(type: .LongInput, description: "", descriptionId: "", placeholder: "UPS Normal", unit: .none))
        
        form.addSection(section)
    }
    
    return form
}
