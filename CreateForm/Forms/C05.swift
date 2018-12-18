//
//  C05.swift
//  CreateForm
//
//  Created by KiKan Ng on 13/12/2018.
//  Copyright © 2018 KiKan Ng. All rights reserved.
//

import Foundation

func C05() -> Form {
    let form = Form(id: "C05", title: "Preventive Maintenance Report of Air-Cooled Chillers")
    
    do {
        let section = Section(title: "Check List", titleId: "check_list")
        section.addCell(Cell(type: .Checkbox, description: "Mechanical condition", descriptionId: "mechanical_condition", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Condenser coil cleaning", descriptionId: "condenser_coil_cleaning", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Electrical power supply", descriptionId: "electrical_power_supply", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Electrical terminals", descriptionId: "electrical_terminals", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Electrical power cables", descriptionId: "electrical_power_cables", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Chilled water temperatures", descriptionId: "chilled_water_temperatures", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Lubrication oil level", descriptionId: "lubrication_oil_level", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Auto changeover function", descriptionId: "auto_changeover_function", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Refrigerant pressures", descriptionId: "refrigerant_pressures", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Refrigerant temperatures", descriptionId: "refrigerant_temperatures", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Sight glass / Filter dryer", descriptionId: "sight_glass", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Controller operation", descriptionId: "controller_operation", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Condenser fan operation", descriptionId: "condenser_fan_operation", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Expansion valve operation", descriptionId: "expansion_valve_operation", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Output alarm signal to monitoring system", descriptionId: "output_alarm_signal", options: Choices.normal))
        
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Record", titleId: "record")
        section.addCell(Cell(type: .ShortInput, description: "Refrigerant type", descriptionId: "refrigerant_type", placeholder: "", unit: .none))
        section.addCell(Cell(type: .ShortInput, description: "Temperature setpoint", descriptionId: "temperature_setpoint", placeholder: "", unit: .celsius))
        section.addCell(Cell(type: .ShortInput, description: "Ambient temperature", descriptionId: "ambient_temperature", placeholder: "", unit: .celsius))
        section.addCell(Cell(type: .ShortInput, description: "Ambient RH", descriptionId: "ambient_rh", placeholder: "", unit: .percent))
        section.addCell(Cell(type: .ShortInput, description: "Chilled water inlet temperature", descriptionId: "chilled_water_inlet_temperature", placeholder: "", unit: .celsius))
        section.addCell(Cell(type: .ShortInput, description: "Chilled water outlet temperature", descriptionId: "chilled_water_outlet_temperature", placeholder: "", unit: .celsius))
        section.addCell(Cell(type: .ShortInput, description: "Chilled water inlet pressure", descriptionId: "chilled_water_inlet_pressure", placeholder: "", unit: .bar))
        section.addCell(Cell(type: .ShortInput, description: "Chilled water outlet pressure", descriptionId: "chilled_water_outlet_pressure", placeholder: "", unit: .bar))
        section.addCell(Cell(type: .ShortInput, description: "Chilled water flow rate", descriptionId: "chilled_water_flow_rate", placeholder: "", unit: .flowRate))
        section.addCell(Cell(type: .ShortInput, description: "Chilled water flow %", descriptionId: "chilled_water_flow", placeholder: "", unit: .percent))
        section.addCell(Cell(type: .ShortInput, description: "Supply voltage (L1)", descriptionId: "supply_voltage_l1", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Supply voltage (L2)", descriptionId: "supply_voltage_l2", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Supply voltage (L3)", descriptionId: "supply_voltage_l3", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Control voltage", descriptionId: "control_voltage", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Operating current (L1)", descriptionId: "operating_current_l1", placeholder: "", unit: .ampere))
        section.addCell(Cell(type: .ShortInput, description: "Operating current (L2)", descriptionId: "operating_current_l2", placeholder: "", unit: .ampere))
        section.addCell(Cell(type: .ShortInput, description: "Operating current (L3)", descriptionId: "operating_current_l3", placeholder: "", unit: .ampere))
        section.addCell(Cell(type: .ShortInput, description: "Running current %", descriptionId: "running_current", placeholder: "", unit: .percent))
        section.addCell(Cell(type: .ShortInput, description: "Refrigerant discharge pressure", descriptionId: "refrigerant_discharge_pressure", placeholder: "", unit: .bar))
        section.addCell(Cell(type: .ShortInput, description: "Refrigerant suction pressure", descriptionId: "refrigerant_suction_pressure", placeholder: "", unit: .bar))
        section.addCell(Cell(type: .ShortInput, description: "Refrigerant discharge temperature", descriptionId: "refrigerant_discharge_temperature", placeholder: "", unit: .celsius))
        section.addCell(Cell(type: .ShortInput, description: "Refrigerant suction temperature", descriptionId: "refrigerant_suction_temperature", placeholder: "", unit: .celsius))
        section.addCell(Cell(type: .ShortInput, description: "Condenser inlet temperature", descriptionId: "condenser_inlet_temperature", placeholder: "", unit: .celsius))
        section.addCell(Cell(type: .ShortInput, description: "Condenser outlet temperature", descriptionId: "condenser_outlet_temperature", placeholder: "", unit: .celsius))
        
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Remarks / Comments", titleId: "remarks_comments")
        section.addCell(Cell(type: .LongInput, description: "Remarks", descriptionId: "remarks", placeholder: "", unit: .none))

        form.addSection(section)
    }
    return form
}
