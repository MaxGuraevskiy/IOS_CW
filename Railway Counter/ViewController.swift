//
//  ViewController.swift
//  Railway Counter
//
//  Created by Guraevskiy Max on 30.03.2021.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var row1 = 0;
    var row2 = 0;
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }

    var pickerData: [String] = [String]()
    @IBOutlet weak var picker: UIPickerView!
    
    @IBOutlet weak var picker2: UIPickerView!
    
    @IBOutlet weak var KmCountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerData = ["Moscow", "Saint-Petersburg",  "Petrozavodsk", "Perm'", "Vladivostok", "Sochi"]
        picker.dataSource = self
        picker.delegate = self
        
        picker2.dataSource = self
        picker2.delegate = self
        KmCountLabel.text = "0 km"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if(pickerView.tag == 1){
            row1 = row;
        }
        else{
            row2 = row;
        }
        updateLabel()
    }
    
    func updateLabel(){
        if(row1==row2){
            KmCountLabel.text = "0 km"
            return;
        }
        if(row1 == 0){
            if(row2 == 1){
                KmCountLabel.text = "700 km"
                return;
            }
            if(row2 == 2){
                KmCountLabel.text = "750 km"
                return;
            }
            if(row2 == 3){
                KmCountLabel.text = "500 km"
                return;
            }
            if(row2 == 4){
                KmCountLabel.text = "4000 km"
                return;
            }
            if(row2 == 5){
                KmCountLabel.text = "1500 km"
                return;
            }
        }
        if(row1 == 1){
            if(row2 == 0){
                KmCountLabel.text = "700 km"
                return;
            }
            if(row2 == 2){
                KmCountLabel.text = "100 km"
                return;
            }
            if(row2 == 3){
                KmCountLabel.text = "1100 km"
                return;
            }
        }
        if(row1 == 2){
            if(row2 == 0){
                KmCountLabel.text = "750 km"
                return;
            }
            if(row2 == 1){
                KmCountLabel.text = "100 km"
                return;
            }
        }
        if(row1 == 3){
            if(row2 == 0){
                KmCountLabel.text = "500 km"
                return;
            }
            if(row2 == 1){
                KmCountLabel.text = "1100 km"
                return;
            }
        }
        if(row1 == 4){
            if(row2 == 0){
                KmCountLabel.text = "4000 km"
                return;
            }
        }
        if(row1 == 5){
            if(row2 == 0){
                KmCountLabel.text = "1500 km"
                return;
            }
        }
        KmCountLabel.text = "Такого пути не существует"
    }

    
}

