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
        let section = Section(title: "Check List", titleId: "", repeatable: true)
        section.addCell(Cell(type: .ShortInput, description: "Unit no.", descriptionId: "", placeholder: "", unit: .none))
        section.addCell(Cell(type: .ShortInput, description: "Location", descriptionId: "", placeholder: "", unit: .none))
        section.addCell(Cell(type: .ShortInput, description: "Supply air temp.", descriptionId: "", placeholder: "", unit: .celsius))
        section.addCell(Cell(type: .ShortInput, description: "Return air temp.", descriptionId: "", placeholder: "", unit: .celsius))
        section.addCell(Cell(type: .ShortInput, description: "Fan speed controller (H)", descriptionId: "", placeholder: "", unit: .none))
        section.addCell(Cell(type: .ShortInput, description: "Fan speed controller (M)", descriptionId: "", placeholder: "", unit: .none))
        section.addCell(Cell(type: .ShortInput, description: "Fan speed controller (L)", descriptionId: "", placeholder: "", unit: .none))
        section.addCell(Cell(type: .ShortInput, description: "Thermostat", descriptionId: "", placeholder: "", unit: .none))
        section.addCell(Cell(type: .ShortInput, description: "Motorized value", descriptionId: "", placeholder: "", unit: .none))
        section.addCell(Cell(type: .ShortInput, description: "Bearing condition", descriptionId: "", placeholder: "", unit: .none))
        section.addCell(Cell(type: .ShortInput, description: "Clean filter/ condensate drain", descriptionId: "", placeholder: "", unit: .none))
        
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Remarks / comments", titleId: "")
        section.addCell(Cell(type: .LongInput, description: "", descriptionId: "", placeholder: "input your remarks here", unit: .none))
        form.addSection(section)
    }
    
    return form
}
