//
//  C10.swift
//  CreateForm
//
//  Created by Jade on 14/12/2018.
//  Copyright © 2018年 KiKan Ng. All rights reserved.
//

import Foundation

func C10() -> Form {
    let form = Form(id: "C10", title: "Preventive Maintenance Report of Local Alarm Panel")
    
    
    do {
        let section = Section(title: "Control Panel", titleId: "control_panel")
        section.addCell(Cell(type: .Checkbox, description: "General condition of panels, cover, and name plates", descriptionId: "general_condition", options: Choices.normal))
        
        form.addSection(section)
    }
    do {
        let section = Section(title: "Functional checking", titleId: "function_checking")
        section.addCell(Cell(type: .Checkbox, description: "Push the 'Test' button with all lamps lighting & buzzing sound", descriptionId: "push_test_button", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Push the 'Mute' button to switch-off the buzzing sound", descriptionId: "push_mute_button", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Push the 'Reset' button to reset the alarm function", descriptionId: "push_reset_button", options: Choices.normal))
        
        form.addSection(section)
    }
    do {
        let section = Section(title: "Alarm Simulation Spot Test", titleId: "alarm_simulation_spot_test")
        section.addCell(Cell(type: .Checkbox, description: "High Temperature Alarm", descriptionId: "high_temperature_alarm", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Water Leakage Common Alarm", descriptionId: "water_leakage_common_alarem", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "FM200 Common Alarm", descriptionId: "fm200_common_alarm", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "UPS Common Alarm", descriptionId: "ups_common_alarm", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Sump Pump Common Alarm", descriptionId: "sump_pump_common_alarm", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "CRAC Common Alarm", descriptionId: "crac_common_alarm", options: Choices.normal))
        
        form.addSection(section)
    }
    do {
        let section = Section(title: "Performance", titleId: "performance")
        section.addCell(Cell(type: .YesNo, description: "Performance Noraml", descriptionId: "performance_normal", option: Choices.yes))
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Remarks / Comment", titleId: "remarks_comment")
        section.addCell(Cell(type: .LongInput, description: "Remarks", descriptionId: "remarks", placeholder: "input your remarks here", unit: .none))
        form.addSection(section)
    }
    
    return form
}

