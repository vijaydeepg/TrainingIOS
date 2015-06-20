//
//  ViewController.swift
//  UnitConverter
//
//  Created by My Comp on 20/6/15.
//  Copyright (c) 2015 glimysys. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate{

    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myPicker: UIPickerView!
    var tempRange = TemperatureRange()
    
    //let pickerData = Array(-100...100)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       // myPicker.delegate = self
       // myPicker.dataSource = self
        myPicker.dataSource = tempRange
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Delegates
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let value = tempRange.values[row]
        myLabel.text = "\((1.8 * Float(value) )+32.0 ) ° C"
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        
       // pickerData
        return "\(tempRange.values[row]) °F"
    }

}
