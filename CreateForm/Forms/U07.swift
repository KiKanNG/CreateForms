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
    
    do {
        let section = Section(title: "Basic information", titleId: "basic_information")
        section.addCell(Cell(type: .ShortInput, description: "UPS Model", descriptionId: "ups_model", placeholder: "", unit: .none))
        section.addCell(Cell(type: .TimeDateSelector, description: "Date", descriptionId: "date", dateType: .Date))
        section.addCell(Cell(type: .ShortInput, description: "String No.", descriptionId: "string_no", placeholder: "", unit: .kilovolt))

        
        form.addSection(section)
    }
    
//    for index in 1...50 {
//        let section = Section(title: "Cell No.: \(index)", titleId: "cell_no_\(index)")
//        section.addCell(Cell(type: .ShortInput, description: "DC", descriptionId: "dc", placeholder: "", unit: .volt))
//        section.addCell(Cell(type: .ShortInput, description: "m", descriptionId: "m", placeholder: "", unit: .ohm))
//
//        form.addSection(section)
//    }
    do {
        let section = Section(title: "Cell No.", titleId: "cell_no", repeatable : true, maxRepeat: 50 )
        section.addCell(Cell(type: .ShortInput, description: "DC", descriptionId: "dc", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "m", descriptionId: "m", placeholder: "", unit: .ohm))
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Remarks", titleId: "remarks")
        section.addCell(Cell(type: .LongInput, description: "Remarks", descriptionId: "remarks", placeholder: "input your remarks here", unit: .none))
        form.addSection(section)
    }
    
    return form
}
