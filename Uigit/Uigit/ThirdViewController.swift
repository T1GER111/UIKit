//
//  ThirdViewController.swift
//  Uigit
//
//  Created by T1GER on 25.06.2021.
//

import UIKit

class ThirdViewController: UIViewController {
    
    let cancelLabel = UILabel()
    let addLabel = UILabel()
    let photoLabel = UILabel()
    let changePhotoLabel = UILabel()
    let nameLabel = UILabel()
    let dataLabel = UILabel()
    let ageLabel = UILabel()
    let sexLabel = UILabel()
    let instagramLabel = UILabel()
    
    let firstTextField = UITextField()
    let secondTextField = UITextField()
    let thirdTextField = UITextField()
    let fourthTextField = UITextField()
    let fifthTextField = UITextField()
    
    let dataPicker = UIDatePicker()
    let agePicker = UIPickerView()
    let polPicker = UIPickerView()
    
    let imageLabel = UIImageView(image: UIImage(systemName: "person.crop.circle.fill"))
    
    let bar = UIToolbar()
    let reset = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(resetTapped))

    var polArray = ["Мужчина", "Женщина"]
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        agePicker.delegate = self
        agePicker.dataSource = self
        
        polPicker.delegate = self
        polPicker.dataSource = self
        
        self.cancelLabel.text = "Отменить"
        self.cancelLabel.frame = CGRect(x: 20, y: 50, width: 50, height: 21)
        self.cancelLabel.font.withSize(17)
        self.cancelLabel.backgroundColor = UIColor.white
        self.cancelLabel.textColor = UIColor.systemBlue
        
        self.addLabel.text = "Добавить"
        self.addLabel.frame = CGRect(x: 317, y: 97, width: 77, height: 21)
        self.addLabel.font.withSize(17)
        self.addLabel.backgroundColor = UIColor.white
        self.addLabel.textColor = UIColor.systemBlue
        
        self.changePhotoLabel.text = "Изменить фото"
        self.changePhotoLabel.frame = CGRect(x: 145, y: 280, width: 123, height: 21)
        self.changePhotoLabel.font.withSize(17)
        self.changePhotoLabel.backgroundColor = UIColor.white
        self.changePhotoLabel.textColor = UIColor.systemBlue
        
        self.imageLabel.frame = CGRect(x: 135, y: 130.5, width: 144, height: 141)
        self.imageLabel.backgroundColor = UIColor.white
        self.imageLabel.backgroundColor = UIColor.black
        self.imageLabel.backgroundColor = UIColor.clear
        self.imageLabel.tintColor = .gray
        
        self.nameLabel.text = "Имя"
        self.nameLabel.frame = CGRect(x: 44, y: 366, width: 34, height: 21)
        self.nameLabel.font.withSize(17)
        self.nameLabel.backgroundColor = UIColor.white
        self.nameLabel.textColor = UIColor.systemBlue
        
        self.dataLabel.text = "Дата"
        self.dataLabel.frame = CGRect(x: 44, y: 464, width: 39, height: 21)
        self.dataLabel.font.withSize(17)
        self.dataLabel.backgroundColor = UIColor.white
        self.dataLabel.textColor = UIColor.systemBlue
        
        self.ageLabel.text = "Возраст"
        self.ageLabel.frame = CGRect(x: 44, y: 560, width: 66, height: 21)
        self.ageLabel.font.withSize(17)
        self.ageLabel.backgroundColor = UIColor.white
        self.ageLabel.textColor = UIColor.systemBlue
        
        self.sexLabel.text = "Пол"
        self.sexLabel.frame = CGRect(x: 44, y: 650, width: 32, height: 21)
        self.sexLabel.font.withSize(17)
        self.sexLabel.backgroundColor = UIColor.white
        self.sexLabel.textColor = UIColor.systemBlue
        
        self.instagramLabel.text = "Instagram"
        self.instagramLabel.frame = CGRect(x: 44, y: 734, width: 76, height: 21)
        self.instagramLabel.font.withSize(17)
        self.instagramLabel.backgroundColor = UIColor.white
        self.instagramLabel.textColor = UIColor.systemBlue
        
        self.firstTextField.frame = CGRect(x: 38, y: 395, width: 337, height: 34)
        self.firstTextField.backgroundColor = UIColor.white
        self.firstTextField.textColor = UIColor.black
        self.firstTextField.placeholder = "Введите имя"
        
        self.secondTextField.frame = CGRect(x: 38, y: 495, width: 337, height: 34)
        self.secondTextField.backgroundColor = UIColor.white
        self.secondTextField.textColor = UIColor.black
        self.secondTextField.placeholder = "Введите дату"
        
        self.thirdTextField.frame = CGRect(x: 38, y: 589, width: 337, height: 34)
        self.thirdTextField.backgroundColor = UIColor.white
        self.thirdTextField.textColor = UIColor.black
        self.thirdTextField.placeholder = "Добавить"
        
        self.fourthTextField.frame = CGRect(x: 38, y: 679, width: 337, height: 34)
        self.fourthTextField.backgroundColor = UIColor.white
        self.fourthTextField.textColor = UIColor.black
        self.fourthTextField.placeholder = "Добавить"
        
        self.fifthTextField.frame = CGRect(x: 38, y: 763, width: 337, height: 34)
        self.fifthTextField.backgroundColor = UIColor.white
        self.fifthTextField.textColor = UIColor.black
        self.fifthTextField.placeholder = "Добавить"
        
       
//        secondTextField.center = view.center
        dataPicker.preferredDatePickerStyle = .wheels
        dataPicker.addTarget(self, action: #selector(sendDate), for: .valueChanged)
        secondTextField.inputView = dataPicker

        thirdTextField.inputView = agePicker
        fourthTextField.inputView = polPicker
        
        bar.sizeToFit()
        
        bar.items = [reset]
        thirdTextField.inputAccessoryView = bar
        fourthTextField.inputAccessoryView = bar
        secondTextField.inputAccessoryView = bar
        
        
        self.view.addSubview(cancelLabel)
        self.view.addSubview(addLabel)
        self.view.addSubview(changePhotoLabel)
        self.view.addSubview(imageLabel)
        self.view.addSubview(nameLabel)
        self.view.addSubview(dataLabel)
        self.view.addSubview(ageLabel)
        self.view.addSubview(sexLabel)
        self.view.addSubview(instagramLabel)
        self.view.addSubview(firstTextField)
        self.view.addSubview(secondTextField)
        self.view.addSubview(thirdTextField)
        self.view.addSubview(fourthTextField)
        self.view.addSubview(fifthTextField)
    }
    @objc func resetTapped() {
            view.endEditing(true)
        }
    
    @objc func sendDate(parametrPicker: UIDatePicker) {
            if parametrPicker.isEqual(self.dataPicker) {
                secondTextField.text = "\(parametrPicker.date)"
            }
        }
    
    func instaAlert(title: String, message: String, style: UIAlertController.Style) {
        let alertControler = UIAlertController(title: title, message: message, preferredStyle: style)
        let action = UIAlertAction(title: "Okay", style: .default) { [self] (action) in
            guard let text = alertControler.textFields?.first?.text else { return }
            fifthTextField.text = text
        }
        alertControler.addTextField { (firstTextField) in
            firstTextField.placeholder = "Например: tigran777"
        }
        
        alertControler.addAction(action)
        present(alertControler, animated: true, completion: nil)
        
    }
}



extension ThirdViewController: UIPickerViewDataSource {
 
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.isEqual(agePicker) {
            return 100
        } else {
            return 2
        }
    }
}

extension ThirdViewController: UIPickerViewDelegate {
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if pickerView.isEqual(agePicker) {
            return  "\(row + 1)"
        } else {
            return polArray[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView.isEqual(agePicker) {
            thirdTextField.text = "\(row)"
        } else {
            fourthTextField.text = polArray[row]
        }
    }
    
    
}

