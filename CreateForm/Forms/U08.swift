//
//  U08.swift
//  CreateForm
//
//  Created by Jade on 14/12/2018.
//  Copyright © 2018年 KiKan Ng. All rights reserved.
//

import Foundation

func U08() -> Form {
    let form = Form(id: "U08", title: "Battery Voltages Record")
    
    do {
        let section = Section(title: "System Information", titleId: "system_information")
        section.addCell(Cell(type: .ShortInput, description: "UPS Model No.", descriptionId: "ups_model_no", placeholder: "", unit: .none))
        section.addCell(Cell(type: .ShortInput, description: "Serial No.", descriptionId: "serial_no", placeholder: "", unit: .none))
        section.addCell(Cell(type: .TimeDateSelector, description: "Date", descriptionId: "date", dateType: .Date))
        section.addCell(Cell(type: .ShortInput, description: "Battery Model", descriptionId: "battery_model", placeholder: "", unit: .none))
        section.addCell(Cell(type: .ShortInput, description: "String No.", descriptionId: "string_no", placeholder: "", unit: .none))
        form.addSection(section)

    }
    do {
        let section = Section(title: "String A Cell No", titleId: "string_a_cell_no", repeatable : true, maxRepeat: 50 )
       section.addCell(Cell(type: .ShortInput, description: "DC (V)", descriptionId: "dc", placeholder: "", unit: .volt))
        form.addSection(section)
    }
    do {
        let section = Section(title: "String B Cell No", titleId: "string_b_cell_no", repeatable : true, maxRepeat: 50 )
        section.addCell(Cell(type: .ShortInput, description: "DC (V)", descriptionId: "dc", placeholder: "", unit: .volt))
        form.addSection(section)
    }
    do {
        let section = Section(title: "Remarks", titleId: "remarks")
        section.addCell(Cell(type: .LongInput, description: "Remarks", descriptionId: "remarks", placeholder: "input your remarks here", unit: .none))
        form.addSection(section)
    }

    return form
}
