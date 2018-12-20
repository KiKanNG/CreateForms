//
//  C01.swift
//  CreateForm
//
//  Created by KiKan Ng on 17/8/2018.
//  Copyright © 2018 KiKan Ng. All rights reserved.
//

import Foundation

func C01() -> Form {
    let form = Form(id: "C01", title: "Preventive Maintenance Report of CRAR System")
    
    do {
        let section = Section(title: "Check List", titleId: "check_list")
        section.addCell(Cell(type: .Checkbox, description: "Expansion valve operation", descriptionId: "expansion_valve_operation", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Cooling valve operation", descriptionId: "cooling_valve_operation", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Temperature sensor", descriptionId: "temperature_sensor", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Condensate drip", descriptionId: "condensate_drip", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Components cleaning", descriptionId: "components_cleaning", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Filter cleaning", descriptionId: "filter_cleaning", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Auto changeover function", descriptionId: "auto_Changeover_function", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Humidifier water supply", descriptionId: "humidifier_water_supply", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Cooling function test", descriptionId: "humidifier_function_test", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Fan operation", descriptionId: "fan_operation", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Control panel operation", descriptionId: "control_panel_operation", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "I.O. card", descriptionId: "iocard", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Electrical terminals", descriptionId: "electrical_terminals", options: Choices.normal))
        section.addCell(Cell(type: .Checkbox, description: "Output alarm signal to monitoring system", descriptionId: "output_alarm_signal_to_monitoring_system", options: Choices.normal))
        
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Records", titleId: "record")
        section.addCell(Cell(type: .ShortInput, description: "Supply air temperature", descriptionId: "supply_air_temperature", placeholder: "", unit: .celsius))
        section.addCell(Cell(type: .ShortInput, description: "Return air temperature", descriptionId: "return_air_temperature", placeholder: "", unit: .celsius))
        section.addCell(Cell(type: .ShortInput, description: "Supply air RH", descriptionId: "supply_air_rh", placeholder: "", unit: .percent))
        section.addCell(Cell(type: .ShortInput, description: "Return air RH", descriptionId: "return_air_rh", placeholder: "", unit: .percent))
        section.addCell(Cell(type: .ShortInput, description: "Ambient temperature", descriptionId: "ambient_temperature", placeholder: "", unit: .celsius))
        section.addCell(Cell(type: .ShortInput, description: "Ambient RH", descriptionId: "ambient_rh", placeholder: "", unit: .percent))
        section.addCell(Cell(type: .ShortInput, description: "Chilled water inlet temperature", descriptionId: "chilled_water_inlet_temperature", placeholder: "", unit: .celsius))
        section.addCell(Cell(type: .ShortInput, description: "Condenser water inlet temperature", descriptionId: "condenser_water_inlet_temperature", placeholder: "", unit: .celsius))
        section.addCell(Cell(type: .ShortInput, description: "Chilled water outlet temperature", descriptionId: "chilled_water_outlet_temperature", placeholder: "", unit: .celsius))
        section.addCell(Cell(type: .ShortInput, description: "Condenser water outlet temperature", descriptionId: "condenser_water_outlet_temperature", placeholder: "", unit: .celsius))
        section.addCell(Cell(type: .ShortInput, description: "Chilled water inlet pressure", descriptionId: "chilled_water_inlet_pressure", placeholder: "", unit: .pressure))
        section.addCell(Cell(type: .ShortInput, description: "Condenser water inlet pressure", descriptionId: "condenser_water_inlet_pressure", placeholder: "", unit: .pressure))
        section.addCell(Cell(type: .ShortInput, description: "Chilled water outlet pressure", descriptionId: "chilled_water_outlet_pressure", placeholder: "", unit: .pressure))
        section.addCell(Cell(type: .ShortInput, description: "Condenser water outlet pressure", descriptionId: "condenser_water_outlet_pressure", placeholder: "", unit: .pressure))
        section.addCell(Cell(type: .ShortInput, description: "Compressor discharge pressure", descriptionId: "compressor_discharge_pressure", placeholder: "", unit: .pressure))
        section.addCell(Cell(type: .ShortInput, description: "Compressor suction pressure", descriptionId: "compressor_suction_pressure", placeholder: "", unit: .pressure))
        section.addCell(Cell(type: .ShortInput, description: "Main supply voltage (L1)", descriptionId: "main_supply_voltage_l1", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Main supply voltage (L2)", descriptionId: "main_supply_voltage_l2", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Main supply voltage (L3)", descriptionId: "main_supply_voltage_l3", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Control voltage", descriptionId: "control_voltage", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Supply fan - 1 Current (L1)", descriptionId: "supply_fan_1_current_l1", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Supply fan - 1 Current (L2)", descriptionId: "supply_fan_1_current_l2", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Supply fan - 1 Current (L3)", descriptionId: "supply_fan_1_current_l3", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Supply fan - 2 Current (L1)", descriptionId: "supply_fan_2_current_l1", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Supply fan - 2 Current (L2)", descriptionId: "supply_fan_2_current_l2", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Supply fan - 2 Current (L3)", descriptionId: "supply_fan_2_current_l3", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Heating steps - 1 Current (L1)", descriptionId: "supply_fan_1_current_l1", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Heating steps - 1 Current (L2)", descriptionId: "supply_fan_1_current_l2", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Heating steps - 1 Current (L3)", descriptionId: "heating_steps_1_current_l3", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Heating steps - 2 Current (L1)", descriptionId: "heating_steps_2_current_l1", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Heating steps - 2 Current (L2)", descriptionId: "heating_steps_2_current_l2", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Heating steps - 2 Current (L3)", descriptionId: "heating_steps_2_current_l3", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Boiler humidifier current", descriptionId: "boiler_humidifier_current", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Compressor - 1 (L1)", descriptionId: "compressor_1_current_l1", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Compressor - 1 (L2)", descriptionId: "compressor_1_current_l2", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Compressor - 1 (L3)", descriptionId: "compressor_1_current_l3", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Compressor - 2 (L1)", descriptionId: "compressor_2_current_l1", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Compressor - 2 (L2)", descriptionId: "compressor_2_current_l2", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Compressor - 2 (L3)", descriptionId: "compressor_2_current_l3", placeholder: "", unit: .volt))
        section.addCell(Cell(type: .ShortInput, description: "Condenser fan current", descriptionId: "condenser_fan_current", placeholder: "", unit: .volt))
        
        form.addSection(section)
    }
    
    do {
        let section = Section(title: "Remarks / comments", titleId: "remarks_comments")
        section.addCell(Cell(type: .LongInput, description: "Remarks", descriptionId: "remarks", placeholder: "input your remarks here", unit: .none))
        form.addSection(section)
    }
    
    return form
}
