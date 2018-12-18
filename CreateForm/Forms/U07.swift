//
//  U07.swift
//  CreateForm
//
//  Created by KiKan Ng on 9/10/2018.
//  Copyright © 2018 KiKan Ng. All rights reserved.
//

import Foundation

func U07() -> Form {
    let form = Form(id: "U07", title: "Battery Voltages and Internal Resistance Record")
    
    for index in 1...50 {
        let section = Section(title: "Cell No.: \(index)", titleId: "")
        section.addCell(Cell(type: .ShortInput, description: "DC", descriptionId: "", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "m", descriptionId: "", placeholder: "", unit: .ohm))
        
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Remarks", titleId: "remarks")
        section.addCell(Cell(type: .LongInput, description: "Remarks", descriptionId: "remarks", placeholder: "input your remarks here", unit: .none))
        form.addSection(section)
    }
    
    return form
}
