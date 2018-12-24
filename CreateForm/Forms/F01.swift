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
        section.addCell(Cell(type: .YesNo, description: "All bell horn and warning signal are operating properly", descriptionId: "All_bell_born_properly", option: Choices.normal))
        section.addCell(Cell(type: .YesNo, description: "The abort switch (i.r Lock-off unit) is functioning correctly", descriptionId: "the_switch_is_functioning", option: Choices.normal))
        section.addCell(Cell(type: .YesNo, description: "Pressure reading the gas cylinder", descriptionId: "pressure_reading", option: Choices.normal))
        section.addCell(Cell(type: .YesNo, description: "Check any leakage from the cylinder valve (Bubble test)", descriptionId: "bubble_test", option: Choices.normal))
        
        form.addSection(section)
    }
    do {
        let section = Section(title: "Check and ensure that fire alarm panel operation correctly", titleId: "check_fire_alarm_panel")
        section.addCell(Cell(type: .YesNo, description: "Signals feeding back to fire panel", descriptionId: "signals_feeding_back", option: Choices.normal))
        section.addCell(Cell(type: .YesNo, description: "Battery operation condition", descriptionId: "battery_operation_condition", option: Choices.normal))
        section.addCell(Cell(type: .YesNo, description: "Maintained proper connection", descriptionId: "maintained_proper_connection", option: Choices.normal))
        section.addCell(Cell(type: .YesNo, description: "Auto mode", descriptionId: "auto_mode", option: Choices.normal))
        section.addCell(Cell(type: .YesNo, description: "Manual mode", descriptionId: "manual_mode", option: Choices.normal))
        section.addCell(Cell(type: .YesNo, description: "System fault", descriptionId: "system_fault", option: Choices.normal))
        section.addCell(Cell(type: .YesNo, description: "Power supply condition", descriptionId: "power_supply_condition", option: Choices.normal))
        section.addCell(Cell(type: .YesNo, description: "Buzzer and silence push button are operation properly", descriptionId: "buzzer_silence_push_button", option: Choices.normal))
        section.addCell(Cell(type: .YesNo, description: "Put system back into operation", descriptionId: "put_system_back", option: Choices.normal))
        
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
