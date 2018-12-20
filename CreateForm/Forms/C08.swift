//
//  C08.swift
//  CreateForm
//
//  Created by KiKan Ng on 9/10/2018.
//  Copyright © 2018 KiKan Ng. All rights reserved.
//

import Foundation

func C08() -> Form {
    let form = Form(id: "C08", title: "Preventive Maintenance Report of Water Detection System")
    
    do {
        let section = Section(title: "Control Panel (Visual Check)", titleId: "control_panel")
        section.addCell(Cell(type: .Checkbox, description: "General condition of panels, doors and name plates", descriptionId: "general_condition_of_panels_doors_and_name_plates", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Instrumentation & indication", descriptionId: "instrumentation_indication", options: Choices.normal))
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Check alarm panel operating condition", titleId: "check_alarm_panel_operating_condition")
        section.addCell(Cell(type: .Checkbox, description: "Buzzer and silence push button", descriptionId: "buzzer_and_silence_push_button", options: Choices.normal))
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Alarm Test", titleId: "alarm_test")
        section.addCell(Cell(type: .Checkbox, description: "Cable break", descriptionId: "cable_break", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Leakage alarm", descriptionId: "leakage_alarm", options: Choices.normal))
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Performance", titleId: "performance")
        section.addCell(Cell(type: .Checkbox, description: "Performance normal, no problem found (if not please verify)", descriptionId: "performance_normal", options: Choices.yes))
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Remarks / comments", titleId: "remarks_comments")
        section.addCell(Cell(type: .LongInput, description: "Remarks", descriptionId: "remarks", placeholder: "input your remarks here", unit: .none))
        form.addSection(section)
    }
    
    return form
}
