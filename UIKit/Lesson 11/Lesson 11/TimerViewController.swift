//
//  ViewController.swift
//  Lesson 11
//
//  Created by T1GER on 02.07.2021.
//

import UIKit

final class TimerViewController: UIViewController {
    
    @IBOutlet weak var radarLabel: UILabel!
    @IBOutlet weak var toolbar: UIToolbar!
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var start: UIButton!
    @IBOutlet weak var cancel: UIButton!
    
   private var hour: Int = 0
   private var minutes: Int = 0
   private var seconds: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        self.radarLabel.layer.cornerRadius = 20
        self.cancel.layer.cornerRadius = 40
        self.start.layer.cornerRadius = 40
        
        self.picker.dataSource = self
        self.picker.delegate = self
        self.picker.tintColor = .white
    }
}

extension TimerViewController: UIPickerViewDelegate,UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component {
        case 0:
            return 25
        case 1,2:
            return 60
            
        default:
            return 0
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        return pickerView.frame.size.width/3
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component {
        case 0:
            return "\(row) ч"
        case 1:
            return "\(row) мин"
        case 2:
            return "\(row) секунд"
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
