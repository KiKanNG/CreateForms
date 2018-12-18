//
//  U09.swift
//  CreateForm
//
//  Created by Jade on 14/12/2018.
//  Copyright © 2018年 KiKan Ng. All rights reserved.
//

import Foundation

func U09() -> Form {
    let form = Form(id: "U09", title: "Routine Report ")
    
    do {
        let section = Section(title: "Rectifier DC System", titleId: "rectifier_dc_system")
        section.addCell(Cell(type: .ShortInput, description: "Rated Current", descriptionId: "rated_current", placeholder: "", unit: .none))
        section.addCell(Cell(type: .Checkbox, description: "Check AC Input Breakers Position", descriptionId: "check_ac", options: Choices.twoOptionsOkNotOk))
        section.addCell(Cell(type: .Checkbox, description: "Check DC Load Breakers Position", descriptionId: "check_dc", options: Choices.twoOptionsOkNotOk))
        section.addCell(Cell(type: .Checkbox, description: "Check Battery Breakers Position / Fuses Status", descriptionId: "check_battery", options: Choices.twoOptionsOkNotOk))
        section.addCell(Cell(type: .ShortInput, description: "Check and Measure AC Input Voltage L1-N", descriptionId: "ac_input_voltage_l1n", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Check and Measure AC Input Voltage L2-N", descriptionId: "ac_input_voltage_l2n", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Check and Measure AC Input Voltage L3-N", descriptionId: "ac_input_voltage_l3n", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .Checkbox, description: "Check and Measure AC Input Voltage ", descriptionId: "ac_input_voltage_ok", options: Choices.twoOptionsOkNotOk))
        section.addCell(Cell(type: .ShortInput, description: "Check and Measure DC Output Voltage (V)", descriptionId: "total_current_v", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .Checkbox, description: "Check and Measure DC Output Voltage ", descriptionId: "total_current_ok", options: Choices.twoOptionsOkNotOk))
        section.addCell(Cell(type: .ShortInput, description: "Check and Measure Total Loading Current (A)", descriptionId: "total_current_a",placeholder: "", unit: .ampere))
        section.addCell(Cell(type: .Checkbox, description: "Check and Measure Total Loading Current", descriptionId: "total_current_ok", options: Choices.twoOptionsOkNotOk))
        form.addSection(section)
    }
    do {
        let section = Section(title: "Check and Measure Total Loading Current", titleId: "total_loading_current", repeatable : true)
        section.addCell(Cell(type: .ShortInput, description: "Rectifier (ID)", descriptionId: "rectifier", placeholder: "", unit: .none))
        section.addCell(Cell(type: .ShortInput, description: "Current (Adc)", descriptionId: "ac_input_voltage_l1n", placeholder: "", unit: .ampere))
        form.addSection(section)
    }
    do {
        let section = Section(title: "Rectifier Battery System", titleId: "rectifier_battery_system")
        section.addCell(Cell(type: .ShortInput, description: "Rated Current", descriptionId: "rated_current", placeholder: "", unit: .none))
        section.addCell(Cell(type: .Checkbox, description: "Check DC Load Breakers Position", descriptionId: "check_dc", options: Choices.twoOptionsOkNotOk))
        section.addCell(Cell(type: .Checkbox, description: "Check Battery Breakers Position / Fuses Status", descriptionId: "check_battery", options: Choices.twoOptionsOkNotOk))
        section.addCell(Cell(type: .ShortInput, description: "Check and Measure DC Output Voltage (V)", descriptionId: "total_current_v", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .Checkbox, description: "Check and Measure DC Output Voltage ", descriptionId: "total_current_ok", options: Choices.twoOptionsOkNotOk))
        section.addCell(Cell(type: .ShortInput, description: "Check and Measure Total Loading Current (A)", descriptionId: "total_current_a",placeholder: "", unit: .ampere))
        section.addCell(Cell(type: .Checkbox, description: "Check and Measure Total Loading Current", descriptionId: "total_current_ok", options: Choices.twoOptionsOkNotOk))
    }
    
    for index in 1...24 {
        let section = Section(title: "Sting A Cell No.: \(index)", titleId: "string_a_cell_no_\(index)")
        section.addCell(Cell(type: .ShortInput, description: "Voltage", descriptionId: "voltage", placeholder: "", unit: .volt))
        
        form.addSection(section)
    }
    for index in 1...24 {
        let section = Section(title: "Sting B Cell No.: \(index)", titleId: "string_b_cell_no_\(index)")
        section.addCell(Cell(type: .ShortInput, description: "Voltage", descriptionId: "voltage", placeholder: "", unit: .volt))
        
        form.addSection(section)
    }
    return form
}
