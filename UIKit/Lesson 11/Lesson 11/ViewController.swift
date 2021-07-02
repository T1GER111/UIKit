//
//  ViewController.swift
//  Lesson 11
//
//  Created by T1GER on 02.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var hour: Int = 0
        var minutes: Int = 0
        var seconds: Int = 0
        var name: String = ""

        var totalSeconds: Int {
            return hour * 3600 + minutes  * 60 + seconds
            
        }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
    }
    

    }
         extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {

             func numberOfComponents(in pickerView: UIPickerView) -> Int {
                 return 3
             }

             func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
                 switch component {
                 case 0:
                     return 25
                 case 1, 2:
                     return 60
                 default:
                     return 0
                 }
             }

             func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
                return pickerView.frame.size.width/4
             }

             func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
                 switch component {
                 case 0:
                     return "\(row) hr"
                 case 1:
                     return "\(row) min"
                 case 2:
                     return "\(row) sec"
                 default:
                     return ""
                 }
             }
             func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
                 switch component {
                 case 0:
                     hour = row
                 case 1:
                     minutes = row
                 case 2:
                     seconds = row
                 default:
                     break;
                 }
             }
}

