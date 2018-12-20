//
//  C04.swift
//  CreateForm
//
//  Created by KiKan Ng on 21/8/2018.
//  Copyright © 2018 KiKan Ng. All rights reserved.
//

import Foundation

func C04() -> Form {
    let form = Form(id: "C04", title: "Preventive Maintenance Report of Fan Coil Units")
    
    do {
        let section = Section(title: "Check List", titleId: "check_list", repeatable: true)
        section.addCell(Cell(type: .ShortInput, description: "Unit no.", descriptionId: "unit_no", placeholder: "", unit: .none))
        section.addCell(Cell(type: .ShortInput, description: "Location", descriptionId: "location", placeholder: "", unit: .none))
        section.addCell(Cell(type: .ShortInput, description: "Supply air temp.", descriptionId: "supply_air_temp", placeholder: "", unit: .celsius))
        section.addCell(Cell(type: .ShortInput, description: "Return air temp.", descriptionId: "return_air_temp", placeholder: "", unit: .celsius))
        section.addCell(Cell(type: .ShortInput, description: "Fan speed controller (H)", descriptionId: "fan_speed_controller_h", placeholder: "", unit: .none))
        section.addCell(Cell(type: .ShortInput, description: "Fan speed controller (M)", descriptionId: "fan_speed_controller_m", placeholder: "", unit: .none))
        section.addCell(Cell(type: .ShortInput, description: "Fan speed controller (L)", descriptionId: "fan_speed_controller_l", placeholder: "", unit: .none))
        section.addCell(Cell(type: .ShortInput, description: "Thermostat", descriptionId: "thermostat", placeholder: "", unit: .none))
        section.addCell(Cell(type: .ShortInput, description: "Motorized value", descriptionId: "motorized_value", placeholder: "", unit: .none))
        section.addCell(Cell(type: .ShortInput, description: "Bearing condition", descriptionId: "bearing_condition", placeholder: "", unit: .none))
        section.addCell(Cell(type: .ShortInput, description: "Clean filter/ condensate drain", descriptionId: "clean_filter_condersate_drain", placeholder: "", unit: .none))
        
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Remarks / comments", titleId: "remarks_comments")
        section.addCell(Cell(type: .LongInput, description: "Remarks", descriptionId: "remarks", placeholder: "input your remarks here", unit: .none))
        form.addSection(section)
    }
    
    return form
}
