//
//  C03.swift
//  CreateForm
//
//  Created by KiKan Ng on 21/8/2018.
//  Copyright © 2018 KiKan Ng. All rights reserved.
//

import Foundation

func C03() -> Form {
    let form = Form(id: "C03", title: "Preventive Maintenance Report of Fan Coil Unit")
    
    do {
        let section = Section(title: "System Information", titleId: "system_information")
        section.addCell(Cell(type: .ShortInput, description: "Room temperature", descriptionId: "room_temperature", placeholder: "", unit: .celsius))
        section.addCell(Cell(type: .ShortInput, description: "Supply temperature", descriptionId: "supply_temperature", placeholder: "", unit: .celsius))
        section.addCell(Cell(type: .ShortInput, description: "Supply voltage", descriptionId: "supply_voltage", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Ambient temperature", descriptionId: "ambient_temperature", placeholder: "", unit: .celsius))
        section.addCell(Cell(type: .ShortInput, description: "Ambient RH", descriptionId: "ambient_rh", placeholder: "", unit: .percent))
        section.addCell(Cell(type: .ShortInput, description: "Control voltage", descriptionId: "control_voltage", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Fan motor current", descriptionId: "fan_motor_current", placeholder: "", unit: .ampere))
        
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Check List", titleId: "check_list")
        section.addCell(Cell(type: .Checkbox, description: "Electrical terminals", descriptionId: "electrical_terminals", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Temperature sensor", descriptionId: "temperature_sensor", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Condensate drip", descriptionId: "condensate_drip", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Drain properly", descriptionId: "drain_properly", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Control panel operation", descriptionId: "control_panel_operation", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Belts (check tension and adjust tension with tension tester, if necessary)", descriptionId: "belts", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Emergency push buttons", descriptionId: "emergency_push_buttons", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Spring isolator", descriptionId: "spring_isolator", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Filter cleanliness / direction", descriptionId: "filter_cleanliness_direction", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Fan and fan motor", descriptionId: "fan_and_fan_motor", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Visual check for duct insulation", descriptionId: "visual_check_for_duct_insulation", options: Choices.normal))
        
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Performance", titleId: "performance")
        section.addCell(Cell(type: .YesNo, description: "Performance normal, no problem found (if not please verify)", descriptionId: "performance_normal", option: Choices.yes))
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Remarks / comments", titleId: "remarks_comments")
        section.addCell(Cell(type: .LongInput, description: "Remarks", descriptionId: "remarks", placeholder: "input your remarks here", unit: .none))
        form.addSection(section)
    }
    
    return form
}
