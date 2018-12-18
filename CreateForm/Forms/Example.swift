//
//  Example.swift
//  CreateForm
//
//  Created by KiKan Ng on 17/8/2018.
//  Copyright © 2018 KiKan Ng. All rights reserved.
//

import Foundation

func Example() -> Form {
    let form = Form(id: "Example", title: "Preventive Maintenance Report of CRAR System")
    
    do {
        let section = Section(title: "Example of all kind of cells available", titleId: "", repeatable: true)
        section.addCell(Cell(type: .ShortInput, description: "Model Number", descriptionId: "", placeholder: "Please fill in", unit: .none, repeatable: true, nullable: false))
        section.addCell(Cell(type: .LongInput, description: "Comment", descriptionId: "", placeholder: "notes", unit: .none))
        section.addCell(Cell(type: .Checkbox, description: "Expansion value operation", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .MultiSelectionCheckbox, description: "Fruits I like", descriptionId: "", options: Choices.normal))
        section.addCell(Cell(type: .TimeDateSelector, description: "Sign in time", descriptionId: "", dateType: .Date))
        section.addCell(Cell(type: .Signature, description: "Signature", descriptionId: "", showSavedSig: false))
        
        form.addSection(section)
    }
    
    return form
}
