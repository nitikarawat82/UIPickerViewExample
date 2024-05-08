//
//  ViewController.swift
//  UIpickerView
//
//  Created by HT-Mac-06 on 5/8/24.
//

import UIKit

class ViewController: UIViewController , UIPickerViewDelegate  , UIPickerViewDataSource  {
        
   
    
    
    
    @IBOutlet weak var countrynameLbl: UILabel!
    @IBOutlet weak var countrynamePicker: UIPickerView!
    @IBOutlet weak var countryImg: UIImageView!
    
    
    let country = ["Afghanistan" , "India" , "Pakistan" , "USA", "China" , "Korea"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countrynamePicker.delegate = self
        countrynamePicker.dataSource = self
    }


    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return  country.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return country[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        countrynameLbl.text = country[row]
        countryImg.image = UIImage(named: country[row])
    }
}

