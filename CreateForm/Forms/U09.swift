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
        section.addCell(Cell(type: .YesNo, description: "Check AC Input Breakers Position", descriptionId: "check_ac", option: Choices.twoOptionsOkNotOk))
        section.addCell(Cell(type: .YesNo, description: "Check DC Load Breakers Position", descriptionId: "check_dc", option: Choices.twoOptionsOkNotOk))
        section.addCell(Cell(type: .YesNo, description: "Check Battery Breakers Position / Fuses Status", descriptionId: "check_battery", option: Choices.twoOptionsOkNotOk))
        section.addCell(Cell(type: .ShortInput, description: "Check and Measure AC Input Voltage L1-N", descriptionId: "ac_input_voltage_l1n", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Check and Measure AC Input Voltage L2-N", descriptionId: "ac_input_voltage_l2n", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Check and Measure AC Input Voltage L3-N", descriptionId: "ac_input_voltage_l3n", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .YesNo, description: "Check and Measure AC Input Voltage ", descriptionId: "ac_input_voltage_ok", option: Choices.twoOptionsOkNotOk))
        section.addCell(Cell(type: .ShortInput, description: "Check and Measure DC Output Voltage (V)", descriptionId: "dc_output_voltage_v", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .YesNo, description: "Check and Measure DC Output Voltage ", descriptionId: "dc_output_voltage_ok", option: Choices.twoOptionsOkNotOk))
        section.addCell(Cell(type: .ShortInput, description: "Check and Measure Total Loading Current (A)", descriptionId: "total_current_a",placeholder: "", unit: .ampere))
        section.addCell(Cell(type: .YesNo, description: "Check and Measure Total Loading Current", descriptionId: "total_current_ok", option: Choices.twoOptionsOkNotOk))
        form.addSection(section)
    }
    do {
        let section = Section(title: "Check and Measure Total Loading Current", titleId: "total_loading_current", repeatable : true, maxRepeat: 8 )
        section.addCell(Cell(type: .ShortInput, description: "Rectifier (ID)", descriptionId: "rectifier", placeholder: "", unit: .none))
        section.addCell(Cell(type: .ShortInput, description: "Current (Adc)", descriptionId: "current", placeholder: "", unit: .ampere))
        form.addSection(section)
    }
    do {
        let section = Section(title: "Rectifier Battery System", titleId: "rectifier_battery_system")
        section.addCell(Cell(type: .ShortInput, description: "Rated Current", descriptionId: "rated_current", placeholder: "", unit: .none))
        section.addCell(Cell(type: .YesNo, description: "Check DC Load Breakers Position", descriptionId: "check_dc", option: Choices.twoOptionsOkNotOk))
        section.addCell(Cell(type: .YesNo, description: "Check Battery Breakers Position / Fuses Status", descriptionId: "check_battery", option: Choices.twoOptionsOkNotOk))
        section.addCell(Cell(type: .ShortInput, description: "Check and Measure DC Output Voltage (V)", descriptionId: "dc_output_voltage_v", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .YesNo, description: "Check and Measure DC Output Voltage ", descriptionId: "dc_output_voltage_ok", option: Choices.twoOptionsOkNotOk))
        section.addCell(Cell(type: .ShortInput, description: "Check and Measure Total Loading Current (A)", descriptionId: "total_current_a",placeholder: "", unit: .ampere))
        section.addCell(Cell(type: .YesNo, description: "Check and Measure Total Loading Current", descriptionId: "total_current_ok", option: Choices.twoOptionsOkNotOk))
        form.addSection(section)
    }

    do {
        let section = Section(title: "String A Cell No", titleId: "string_a_cell_no", repeatable : true, maxRepeat: 24 )
        section.addCell(Cell(type: .ShortInput, description: "Voltage", descriptionId: "voltage", placeholder: "", unit: .volt))
        form.addSection(section)
    }
    do {
        let section = Section(title: "String B Cell No", titleId: "string_b_cell_no", repeatable : true, maxRepeat: 24 )
        section.addCell(Cell(type: .ShortInput, description: "Voltage", descriptionId: "voltage", placeholder: "", unit: .volt))
        form.addSection(section)
    }
    return form
}
