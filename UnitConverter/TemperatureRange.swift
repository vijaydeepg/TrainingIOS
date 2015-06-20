//
//  TemperatureRange.swift
//  UnitConverter
//
//  Created by My Comp on 20/6/15.
//  Copyright (c) 2015 glimysys. All rights reserved.
//

import UIKit

class TemperatureRange: NSObject, UIPickerViewDataSource
{
    
    let values = (-100...100).map { $0 }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return values.count
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
}