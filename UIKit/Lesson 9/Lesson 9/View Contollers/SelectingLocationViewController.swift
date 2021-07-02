//
//  FirstViewController.swift
//  Lesson 9
//
//  Created by T1GER on 01.07.2021.
//

import UIKit

final class SelectingLocationViewController: UIViewController {
    
    var pickerView: UIPickerView = UIPickerView()
    var firstLabelData: UILabel = UILabel()
    var secondLabelData: UILabel = UILabel()
    var firstImageView = UIImageView()
    var secondImageView = UIImageView()
    var button = UIButton()
    
    var modelData = ModelData()
    var selectedMarka: Marka?
    var selectedModel: Model?
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        //MARK: - Корректировка характеристик кнопки "Перейти к авторизации ".
        button.frame = CGRect(x: 20, y: 668, width: 369, height: 50)
        button.setTitle("Перейти к авторизации", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        button.backgroundColor = UIColor.orange
        button.setTitleColor(.black, for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.layer.shadowColor = UIColor(red: 0.25, green: 0.5, blue: 0, alpha: 0.25).cgColor
        button.layer.shadowOffset = CGSize(width: 0.0, height: 10)
        button.layer.shadowRadius = 10
        button.layer.shadowOpacity = 0.6
        button.layer.masksToBounds = false
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(clickOnButton), for: .touchUpInside)
        
        //MARK: - Корректировка характеристик пикера "pickerView".
        pickerView.frame = CGRect(x: 0, y: 320, width: 414, height: 162)
        pickerView.dataSource = self
        pickerView.delegate = self
        
        
        //MARK: - Корректировка характеристик первого лейбла "Выбрано сейчас:".
        firstLabelData.frame = CGRect(x: 20, y: 299, width: 369, height: 27)
        firstLabelData.text = ""
        firstLabelData.adjustsFontSizeToFitWidth = true
        firstLabelData.numberOfLines = 0
        firstLabelData.font = UIFont(name:"fontname", size: 20.0)
        firstLabelData.font = UIFont.boldSystemFont(ofSize: 24.0)
        
        //MARK: - Корректировка характеристик второго лейбла "Выбрано сейчас:".
        secondLabelData.frame = CGRect(x: 139, y: 256, width: 170, height: 21)
        secondLabelData.text = "Выбрано сейчас: "
        secondLabelData.font = UIFont.systemFont(ofSize: 20)
        
        //MARK: - Корректировка характеристик Image "firstImage".
        firstImageView.frame = CGRect(x: 20, y: 89, width: 374, height: 128)
        firstImageView.image = UIImage(named: "ДОДО-Пицца")
        
        //MARK: - Корректировка характеристик Image "secondImage".
        secondImageView.frame = CGRect(x: 0, y: 470, width: 414, height: 426)
        secondImageView.image = UIImage(named: "pizza4")
        
        //MARK: - Вывод на View.
        self.view.addSubview(firstImageView)
        self.view.addSubview(secondImageView)
        self.view.addSubview(button)
        self.view.addSubview(pickerView)
        self.view.addSubview(firstLabelData)
        self.view.addSubview(secondLabelData)
    }
    @objc func clickOnButton(parametrSender: Any) {
        let secondViewController = AuthorizationViewController()
        let navController = UINavigationController(rootViewController: secondViewController)
        navController.modalPresentationStyle = .fullScreen
        present(navController, animated: true)
    }
}

extension SelectingLocationViewController: UIPickerViewDataSource {
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
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

extension SelectingLocationViewController: UIPickerViewDelegate {
    public func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        let w = pickerView.frame.size.width
        return component == 0 ? (1 / 3.0) * w : (2 / 3.0) * w
    }
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            let marka = modelData.marks[row]
            return marka.name
        } else {
            let model = modelData.modelsByMark[row]
            return model.name
        }
    }
    
    public func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            let marka = modelData.marks[row]
            selectedMarka = marka
            modelData.modelsByMark = modelData.getModels(markaId: marka.id)
            pickerView.reloadComponent(1)
            pickerView.selectRow(0, inComponent: 1, animated: true)
            
            let model = self.modelData.modelsByMark[0]
            selectedModel = model
            
            if let marka = selectedMarka, let model = selectedModel {
                firstLabelData.text = "\(marka.name)" + " - " + "\(model.name)"
            }
            
        } else {
            let model = self.modelData.modelsByMark[row]
            selectedModel = model
            
            if let marka = selectedMarka, let model = selectedModel {
                firstLabelData.text = "\(marka.name)" + " - " + "\(model.name)"
            }
        }
    }
}
