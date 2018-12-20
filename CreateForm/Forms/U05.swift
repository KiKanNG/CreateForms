//
//  U05.swift
//  CreateForm
//
//  Created by Jade on 14/12/2018.
//  Copyright © 2018年 KiKan Ng. All rights reserved.
//

import Foundation

func U05() -> Form {
    let form = Form(id: "U05", title: "UPS Discharge Test")


        do {
            let section = Section(title: "System Information", titleId: "system_information")
            section.addCell(Cell(type: .ShortInput, description: "UPS Model No.", descriptionId: "ups_model_no", placeholder: "", unit: .none))
            section.addCell(Cell(type: .ShortInput, description: "Serial No.", descriptionId: "serial_no", placeholder: "", unit: .none))
            section.addCell(Cell(type: .ShortInput, description: "Rating (kVA)", descriptionId: "rating_kVA", placeholder: "", unit: .kilovoltAmps))
            section.addCell(Cell(type: .ShortInput, description: "Rating (kW)", descriptionId: "rating_kW", placeholder: "", unit: .kilovoltAmps))
            section.addCell(Cell(type: .ShortInput, description: "UPS Output Voltage L1", descriptionId: "ups_output_voltage_l1", placeholder: "", unit: .volt))
            section.addCell(Cell(type: .ShortInput, description: "UPS Output Voltage L2", descriptionId: "ups_output_voltage_l2", placeholder: "", unit: .volt))
            section.addCell(Cell(type: .ShortInput, description: "UPS Output Voltage L3", descriptionId: "ups_output_voltage_l3", placeholder: "", unit: .volt))
            section.addCell(Cell(type: .ShortInput, description: "Loading Current L1", descriptionId: "loading_current_l1", placeholder: "", unit: .ampere))
            section.addCell(Cell(type: .ShortInput, description: "Loading Current L2", descriptionId: "loading_current_l2", placeholder: "", unit: .ampere))
            section.addCell(Cell(type: .ShortInput, description: "Loading Current L3", descriptionId: "loading_current_l3", placeholder: "", unit: .ampere))
            section.addCell(Cell(type: .ShortInput, description: "Initial DC Voltage", descriptionId: "initial_dc_voltage", placeholder: "", unit: .volt))
            
            form.addSection(section)
        }
        do {
            let section = Section(title: "Check List", titleId: "check_list", repeatable: true)
            section.addCell(Cell(type: .ShortInput, description: "Time (Min)", descriptionId: "time", placeholder: "", unit: .minute))
            section.addCell(Cell(type: .ShortInput, description: "DC voltage (Vdc)", descriptionId: "dc_voltage", placeholder: "", unit: .volt))
            section.addCell(Cell(type: .ShortInput, description: "DC current (Adc)", descriptionId: "dc_current", placeholder: "", unit: .ampere))
            section.addCell(Cell(type: .ShortInput, description: "Alarm", descriptionId: "alarm,", placeholder: "", unit: .none))
            form.addSection(section)
        }

        return form
}

