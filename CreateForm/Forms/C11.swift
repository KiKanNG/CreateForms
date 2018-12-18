//
//  C11.swift
//  CreateForm
//
//  Created by Jade on 14/12/2018.
//  Copyright © 2018年 KiKan Ng. All rights reserved.
//

import Foundation

func C11() -> Form {
    let form = Form(id: "C11", title: "Preventive Maintenance Report of Exhaust Air Fan")
    
    
    do {
        let section = Section(title: "Check List", titleId: "check_list", repeatable: true)
        section.addCell(Cell(type: .ShortInput, description: "Unit no.", descriptionId: "unit_no", placeholder: "", unit: .none))
        section.addCell(Cell(type: .ShortInput, description: "Location", descriptionId: "location", placeholder: "", unit: .none))
        section.addCell(Cell(type: .ShortInput, description: "Check bearings noise of motor", descriptionId: "check_bearing_noise", placeholder: "", unit: .none))
        section.addCell(Cell(type: .ShortInput, description: "Check fan blade for proper work", descriptionId: "check_fan_blade", placeholder: "", unit: .none))
        section.addCell(Cell(type: .ShortInput, description: "Check any obstruction at air inlet/outlet", descriptionId: "check_any_obstruction", placeholder: "", unit: .none))
        section.addCell(Cell(type: .ShortInput, description: "Check electrical connection", descriptionId: "check_electrical_connection", placeholder: "", unit: .none))
        
        form.addSection(section)
}
    do {
        let section = Section(title: "Remarks / Comment", titleId: "remarks_comment")
        section.addCell(Cell(type: .LongInput, description: "Remarks", descriptionId: "remarks", placeholder: "input your remarks here", unit: .none))
        form.addSection(section)
}
    do {
        let section = Section(title: "Check all", titleId: "check_all")
        section.addCell(Cell(type: .YesNo, description: "Check all the equipment resume to normal", descriptionId: "check_all_equipment", option: Choices.yes))
        form.addSection(section)
    }
    return form
}

