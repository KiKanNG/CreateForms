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
        section.addCell(Cell(type: .Checkbox, description: "Check the unit backup function", descriptionId: "check_the_unit_backup_function", options: Choices.threeOptionsOkFailed))
        section.addCell(Cell(type: .Checkbox, description: "Check the internal sensor function", descriptionId: "check_the_internal_sensor_function", options: Choices.threeOptionsOkFailed))
        section.addCell(Cell(type: .Checkbox, description: "Check the dial-out function", descriptionId: "check_the_dial_out_function", options: Choices.threeOptionsOkFailed))
        section.addCell(Cell(type: .Checkbox, description: "Check the dial-in function", descriptionId: "check_the_dial_in_function", options: Choices.threeOptionsOkFailed))
        section.addCell(Cell(type: .Checkbox, description: "Check the network communication function", descriptionId: "check_the_network_communication_function", options: Choices.threeOptionsOkFailed))

        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Channel", titleId: "channel")
        for channel in 1...8 {
            section.addCell(Cell(type: .ShortInput, description: "Channel \(channel)", descriptionId: "channel_\(channel)", placeholder: "", unit: .none))
            section.addCell(Cell(type: .Checkbox, description: "The sensor function properly", descriptionId: "the_sensor_function_properly_\(channel)", options: Choices.threeOptionsOkFailed))
        }
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Remarks / comments", titleId: "remarks_comments")
        section.addCell(Cell(type: .LongInput, description: "Remarks", descriptionId: "remarks", placeholder: "input your remarks here", unit: .none))
        form.addSection(section)
    }
    return form
}
