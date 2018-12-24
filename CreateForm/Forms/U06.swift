//
//  U06.swift
//  CreateForm
//
//  Created by Jade on 14/12/2018.
//  Copyright © 2018年 KiKan Ng. All rights reserved.
//

import Foundation

func U06() -> Form {
    let form = Form(id: "U06", title: "Battery Monitoring Preventive Maintenance")
    
    do {
        let section = Section(title: "Basic information", titleId: "basic_information")
        section.addCell(Cell(type: .TimeDateSelector, description: "Date of service", descriptionId: "date", dateType: .Date))
        section.addCell(Cell(type: .ShortInput, description: "No. of control units", descriptionId: "no_of_control_units", placeholder: "", unit: .none))
        section.addCell(Cell(type: .ShortInput, description: "Unit No.", descriptionId: "unit_no", placeholder: "", unit: .none))
        form.addSection(section)
    }
    
    
    do {
        let section = Section(title: "Inspection status", titleId: "inspection_status")
        section.addCell(Cell(type: .YesNo, description: "Inspection for broken, damaged burned components or cable", descriptionId: "inspection_for_broken", option: Choices.twoOptionsOkNotOk))
        section.addCell(Cell(type: .YesNo, description: "Verify the equipment ventilation is normal", descriptionId: "verify_the_equipment_ventilation", option: Choices.twoOptionsOkNotOk))
        section.addCell(Cell(type: .YesNo, description: "Inspection for integrity of battery rack/cabinet", descriptionId: "inspection_for_integrity", option: Choices.twoOptionsOkNotOk))
        section.addCell(Cell(type: .YesNo, description: "General cleaning of the accessible and de-energized area of the equipment", descriptionId: "general_cleaning", option: Choices.twoOptionsOkNotOk))
        section.addCell(Cell(type: .YesNo, description: "Check & clean the sulfide crystal and dust on the battery terminals", descriptionId: "check_clean_the_sulfide_crystal", option: Choices.twoOptionsOkNotOk))
        section.addCell(Cell(type: .YesNo, description: "Check alarm log and history records", descriptionId: "check_alarm_log", option: Choices.twoOptionsOkNotOk))
        section.addCell(Cell(type: .YesNo, description: "Check fibre optic cable is terminated correctly", descriptionId: "check_fibre_optic", option: Choices.twoOptionsOkNotOk))
        section.addCell(Cell(type: .YesNo, description: "Check temperature probes are connected and identified correctly", descriptionId: "check_temperature_probes", option: Choices.twoOptionsOkNotOk))
        section.addCell(Cell(type: .YesNo, description: "Check all current clamps are connected and identified correctly", descriptionId: "check_all_current_clamps", option: Choices.twoOptionsOkNotOk))
        section.addCell(Cell(type: .YesNo, description: "All values of voltage and internal resistance correspond to the expected value", descriptionId: "all_values_of_voltage", option: Choices.twoOptionsOkNotOk))
        section.addCell(Cell(type: .YesNo, description: "Check and ensure the communication between IBMU, CU & DCMs", descriptionId: "check_ensure_communication", option: Choices.twoOptionsOkNotOk))
        section.addCell(Cell(type: .YesNo, description: "Download battery monitoring report", descriptionId: "download_battery_monitoring", option: Choices.twoOptionsOkNotOk))
        form.addSection(section)
    }
    do {
        let section = Section(title: "Battery", titleId: "battery", repeatable: true, maxRepeat: 8)
        section.addCell(Cell(type: .ShortInput, description: "Strings No.", descriptionId: "string_no", placeholder: "", unit: .none))
        section.addCell(Cell(type: .ShortInput, description: "Battery No.", descriptionId: "battery_no", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Voltage (Measurement)", descriptionId: "volt_measurment", placeholder: "", unit: .ampere))
        section.addCell(Cell(type: .ShortInput, description: "mOhmic/Siemens(Measurement)", descriptionId: "mohmic_siemens_measurment", placeholder: "", unit: .none))
        section.addCell(Cell(type: .ShortInput, description: "Voltage (Monitoring)", descriptionId: "volt_monitoring", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "mOhmic/Siemens (Monitoring)", descriptionId: "mohmic_siemens_monitoring", placeholder: "", unit: .none))
        form.addSection(section)
    }

    
    do {
        let section = Section(title: "Additional Remarks", titleId: "additional_remarks")
        section.addCell(Cell(type: .LongInput, description: "Normal Operation", descriptionId: "normal_operation", placeholder: "input your remarks here", unit: .none))
        form.addSection(section)
    }

        return form
    }
