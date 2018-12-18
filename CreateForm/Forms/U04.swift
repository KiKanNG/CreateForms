//
//  U04.swift
//  CreateForm
//
//  Created by KiKan Ng on 9/10/2018.
//  Copyright © 2018 KiKan Ng. All rights reserved.
//

import Foundation

func U04() -> Form {
    let form = Form(id: "U04", title: "Preventive Maintenance Report of Power Distribution System")
    
    do {
        let section = Section(title: "Basic Information", titleId: "basic_information")
        section.addCell(Cell(type: .ShortInput, description: "Phone no.", descriptionId: "phone_no", placeholder: "", unit: .none))
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Main Switchboard", titleId: "main_switchboard")
        section.addCell(Cell(type: .Checkbox, description: "General condition including panels, door and nameplates", descriptionId: "general_condition", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Instrumentation & Indication check all meter reading", descriptionId: "instrumentation_check", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Main electrical supply voltage", descriptionId: "main_electrical_supply_voltage", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Main electrical supply current", descriptionId: "main_electrical_supply_current", options: Choices.normal))
        
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Sub-board", titleId: "subboard")
        section.addCell(Cell(type: .Checkbox, description: "General condition including panels, door and nameplates", descriptionId: "general_condition", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "MCB-RCD condition (visual check) for PDUs and DB board", descriptionId: "mcbrcd_condition", options: Choices.normal))
        
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Electrical Appliances & Fittings", titleId: "electrical_appliances_fittings")
        section.addCell(Cell(type: .Checkbox, description: "Appearance: Inspection for contamination, physical damage, loose hardware", descriptionId: "appearance", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "General condition", descriptionId: "general_condition", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Power points (visual check)", descriptionId: "power_points", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Lighting (visual check)", descriptionId: "lighting", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Switches (visual check wirings are securely mounted on the terminals)", descriptionId: "switches", options: Choices.normal))
        
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Recording the measurement", titleId: "recording_the_measurement")
        section.addCell(Cell(type: .ShortInput, description: "L1-L2", descriptionId: "l1-l2", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "L1-L3", descriptionId: "l1-l3", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "L2-L3", descriptionId: "l2-l3", placeholder: "", unit: .volt))
        
        section.addCell(Cell(type: .ShortInput, description: "L1-N", descriptionId: "l1n", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "L2-N", descriptionId: "l2n", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "L3-N", descriptionId: "l3n", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "N-G", descriptionId: "ng", placeholder: "", unit: .volt))
        
        section.addCell(Cell(type: .ShortInput, description: "L1-Phase", descriptionId: "l1Phase", placeholder: "", unit: .ampere))
        section.addCell(Cell(type: .ShortInput, description: "L2-Phase", descriptionId: "l2Phase", placeholder: "", unit: .ampere))
        section.addCell(Cell(type: .ShortInput, description: "L3-Phase", descriptionId: "l3Phase", placeholder: "", unit: .ampere))

        form.addSection(section)
    }
    
    do {
        let section = Section(title: "", titleId: "")
        section.addCell(Cell(type: .Checkbox, description: "Performance normal, no problem found (if not please verify)", descriptionId: "", options: Choices.yes))
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Remarks / comments", titleId: "")
        section.addCell(Cell(type: .LongInput, description: "Remarks", descriptionId: "remarks", placeholder: "input your remarks here", unit: .none))
        form.addSection(section)
    }
    
    return form
}
