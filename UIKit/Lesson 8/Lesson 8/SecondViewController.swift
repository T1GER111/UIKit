//
//  SecondViewController.swift
//  Lesson 8
//
//  Created by T1GER on 29.06.2021.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var labelData: UILabel!
    
    var modelData = ModelData()
    var selectedMarka: Marka?
    var selectedModel: Model?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelData.text = ""
        pickerView.dataSource = self
        pickerView.delegate = self
        labelData.numberOfLines = 0
    }
}

extension SecondViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component {
        case 0:
            return modelData.marks.count
        case 1:
            return modelData.modelsByMark.count
        default:
            return 0
        }
    }
}

extension SecondViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            let marka = modelData.marks[row]
            return marka.name
        } else {
            let model = modelData.modelsByMark[row]
            return model.name
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            let marka = modelData.marks[row]
            selectedMarka = marka
            modelData.modelsByMark = modelData.getModels(markaId: marka.id)
            pickerView.reloadComponent(1)
            pickerView.selectRow(0, inComponent: 1, animated: true)
            
            let model = self.modelData.modelsByMark[0]
            selectedModel = model
            
            if let marka = selectedMarka, let model = selectedModel {
                labelData.text = "\(marka.name)" + " - " + "\(model.name)"
            }
            
        } else {
            let model = self.modelData.modelsByMark[row]
            selectedModel = model
            
            if let marka = selectedMarka, let model = selectedModel {
                labelData.text = "\(marka.name)" + " - " + "\(model.name)"
            }
        }
    }
}
