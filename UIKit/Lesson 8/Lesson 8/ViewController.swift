//
//  ViewController.swift
//  Lesson 8
//
//  Created by T1GER on 29.06.2021.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    var buttonShare = UIButton()
    var textField = UITextField()
    var activityViewContoller: UIActivityViewController? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.createTextField()
        self.createButton()
        
    }

    //MARK: - Method
    func createTextField() {
        self.textField.frame = CGRect(x: 50, y: 100, width: 280, height: 30)
        self.textField.center = self.view.center
        self.textField.borderStyle = UITextField.BorderStyle.roundedRect
        self.textField.placeholder = "Enter text to share"
        self.textField.delegate = self
        self.view.addSubview(textField)
        
    }
    
    func createButton() {
        
        self.buttonShare = UIButton(type: .roundedRect)
        self.buttonShare.frame = CGRect(x: 70, y: 500, width: 280, height: 44)
        self.buttonShare.setTitle("Расширить", for: .normal)
        self.buttonShare.tintColor = .blue
        self.buttonShare.addTarget(self, action: #selector(hendleShare), for: .touchUpInside)
        self.view.addSubview(buttonShare)
        
    }
    
    @objc func hendleShare(paramSender: Any) {
        let text = self.textField.text
        
        if text?.count == 0 {
            let massage = "Сначала введите текст,потом нажмите кнопку"
            let alertController = UIAlertController(title: nil, message: massage, preferredStyle: .alert)
            let action = UIAlertAction(title: "ok", style: .cancel, handler: nil)
            
            alertController.addAction(action)
            self.present(alertController, animated: true, completion: nil)
        }
        
        self.activityViewContoller = UIActivityViewController(activityItems: [self.textField.text ?? nil], applicationActivities: nil)
        self.present(self.activityViewContoller!, animated: true, completion: nil)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.textField.resignFirstResponder()
        
        return true
    }
}

