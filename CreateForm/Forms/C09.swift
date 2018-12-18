//
//  C09.swift
//  CreateForm
//
//  Created by KiKan Ng on 9/10/2018.
//  Copyright © 2018 KiKan Ng. All rights reserved.
//

import Foundation

func C09() -> Form {
    let form = Form(id: "C09", title: "Preventive Maintenance Report of Sensaphone System")
    
    do {
        let section = Section(title: "", titleId: "")
        section.addCell(Cell(type: .Checkbox, description: "Check the unit backup function", descriptionId: "", options: Choices.threeOptionsOkFailed))
        section.addCell(Cell(type: .Checkbox, description: "Check the internal sensor function", descriptionId: "", options: Choices.threeOptionsOkFailed))
        section.addCell(Cell(type: .Checkbox, description: "Check the dial-out function", descriptionId: "", options: Choices.threeOptionsOkFailed))
        section.addCell(Cell(type: .Checkbox, description: "Check the dial-in function", descriptionId: "", options: Choices.threeOptionsOkFailed))
        section.addCell(Cell(type: .Checkbox, description: "Check the network communication function", descriptionId: "", options: Choices.threeOptionsOkFailed))

        form.addSection(section)
    }
    
    do {
        let section = Section(title: "", titleId: "")
        for channel in 1...8 {
            section.addCell(Cell(type: .ShortInput, description: "Channel \(channel)", descriptionId: "", placeholder: "", unit: .none))
            section.addCell(Cell(type: .Checkbox, description: "The sensor function properly", descriptionId: "", options: Choices.threeOptionsOkFailed))
        }
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Remarks / comments", titleId: "")
        section.addCell(Cell(type: .LongInput, description: "", descriptionId: "", placeholder: "input your remarks here", unit: .none))
        form.addSection(section)
    }
    
    return form
}
