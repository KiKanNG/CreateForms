//
//  F01.swift
//  CreateForm
//
//  Created by Jade on 14/12/2018.
//  Copyright © 2018年 KiKan Ng. All rights reserved.
//

import Foundation

func F01() -> Form {
    let form = Form(id: "F01", title: "Preventive Maintenance Report of FM200 Gas Flooding System")
    
    
    do {
        let section = Section(title: "Check smoke alarm panel operating condition", titleId: "check_smoke_alarm_panel_operating_condition")
        section.addCell(Cell(type: .Checkbox, description: "All bell horn and warning signal are operating properly", descriptionId: "All_bell_born_properly", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "The abort switch (i.r Lock-off unit) is functioning correctly", descriptionId: "the_switch_is_functioning", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Pressure reading the gas cylinder", descriptionId: "pressure_reading", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Check any leakage from the cylinder valve (Bubble test)", descriptionId: "bubble_test", options: Choices.normal))
        
        form.addSection(section)
    }
    do {
        let section = Section(title: "Check and ensure that fire alarm panel operation correctly", titleId: "check_fire_alarm_panel")
        section.addCell(Cell(type: .Checkbox, description: "Signals feeding back to fire panel", descriptionId: "signals_feeding_back", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Battery operation condition", descriptionId: "battery_operation_condition", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Maintained proper connection", descriptionId: "maintained_proper_connection", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Auto mode", descriptionId: "auto_mode", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Manual mode", descriptionId: "manual_mode", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "System fault", descriptionId: "system_fault", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Power supply condition", descriptionId: "power_supply_condition", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Buzzer and silence push button are operation properly", descriptionId: "buzzer_silence_push_button", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Put system back into operation", descriptionId: "put_system_back", options: Choices.normal))
        
        form.addSection(section)
    }
    do {
        let section = Section(title: "Performance", titleId: "performance")
        section.addCell(Cell(type: .YesNo, description: "Performance Normal", descriptionId: "performance_normal", option: Choices.yes))
        form.addSection(section)
    }
    do {
        let section = Section(title: "Remarks / Comment", titleId: "remarks_comment")
        section.addCell(Cell(type: .LongInput, description: "Remarks", descriptionId: "remarks", placeholder: "input your remarks here", unit: .none))
        form.addSection(section)
    }
    
    return form
}
