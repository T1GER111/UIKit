//
//  ViewController.swift
//  Lesson 3
//
//  Created by T1GER on 23.06.2021.
//

import UIKit

//MARK: - Cоздание свойств класса.

class ViewController: UIViewController, UITextFieldDelegate {
    
    var randomNumber = Int.random(in: 0...9)
    
    var result: Int? = 0
    
    let frame = CGRect(x: 160, y: 150, width: 150, height: 50)
    var firstLabel = UILabel()
    var secondLabel = UILabel(frame: CGRect(x: 50, y: 330, width: 100, height: 50))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        //MARK: - Cоздание лейбла.
        
        firstLabel.frame = frame
        firstLabel.text = "Ваше имя"
        
        secondLabel.backgroundColor = .black
        secondLabel.textColor = .white
        secondLabel.textAlignment = .center
        
        //MARK: - Создание кнопки.
        
        let firstButton = UIButton(type: UIButton.ButtonType.system) as UIButton
        
        let xPosition:CGFloat = 50
        let yPosition:CGFloat = 250
        let buttonWidth:CGFloat = 100
        let buttonHeight:CGFloat = 45
        
        
        firstButton.frame = CGRect(x:xPosition, y: yPosition, width: buttonWidth, height: buttonHeight)
        
        
        firstButton.backgroundColor = UIColor.black
        firstButton.setTitle("Multiply", for: .normal)
        firstButton.tintColor = UIColor.white
        
        
        //MARK: - Cоздание второй кнопки.
        
        let secondButton = UIButton(type: UIButton.ButtonType.system) as UIButton
        
        let xPositionTwo:CGFloat = 220
        let yPositionTWo:CGFloat = 250
        let buttonWidthTWo:CGFloat = 120
        let buttonHeightTwo:CGFloat = 45
        
        secondButton.frame = CGRect(x:xPositionTwo, y: yPositionTWo, width: buttonWidthTWo, height: buttonHeightTwo)
        
        secondButton.backgroundColor = UIColor.black
        secondButton.setTitle("Guess", for: .normal)
        secondButton.tintColor = UIColor.white
        firstButton.addTarget(self, action: #selector(buttonActionMultiply), for: .touchUpInside)
        secondButton.addTarget(self, action: #selector(checkNumber), for: .touchUpInside)
        
        
        //MARK: - Добавление лейблов и кнопок в view.
        
        self.view.addSubview(firstLabel)
        self.view.addSubview(secondLabel)
        self.view.addSubview(firstButton)
        self.view.addSubview(secondButton)
    }
    
//MARK: Создание метода Multiply.
    
    @objc func buttonActionMultiply() {
        
        let alertMultiply = UIAlertController(title: "Add Digits", message: nil, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default)  { (action) in
            
            
            if let numOne = Int(alertMultiply.textFields?.first?.text ?? ""), let numTwo = Int(alertMultiply.textFields?.last?.text ?? "") {
                self.result = numOne + numTwo
            }
            self.secondLabel.text = String(self.result ?? 0)
        }
        
        alertMultiply.addAction(action)
        alertMultiply.addTextField(configurationHandler: nil)
        alertMultiply.addTextField(configurationHandler: nil)
        present(alertMultiply, animated: true)
        
    }

    func alertGameChoose(title: String, message: String, style: UIAlertController.Style) {
        
        let alertControler = UIAlertController(title: title, message: message, preferredStyle: style)
        let action = UIAlertAction(title: "Okay", style: .default)
        
        
        alertControler.addAction(action)
        present(alertControler, animated: true, completion: nil)
    }
    
    
    @objc func checkNumber() {
        
        let alertMultiply = UIAlertController(title: "Add Number", message: "Choose from 0..9 ", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default)  { (action) in
            
            
            if self.randomNumber == Int(alertMultiply.textFields?.first?.text ?? "") {
                self.alertGameChoose(title: "You win", message: "", style: .alert)
            } else {
                self.alertGameChoose(title: "You lose", message: "", style: .alert)
            }
            self.secondLabel.text = String(self.result ?? 0)
        }
        alertMultiply.addAction(action)
        alertMultiply.addTextField(configurationHandler: nil)
        present(alertMultiply, animated: true)
    }
    
//MARK: viewDidAppear - Метод вызывается в момент появления View на экране.
    
    override func viewDidAppear(_ animated: Bool) {

        
        let initialsAlert = UIAlertController(title: "Type Initials", message: nil, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default)  { (action) in
            self.firstLabel.text = initialsAlert.textFields?.first?.text
            
        }
        
        initialsAlert.addAction(action)
        initialsAlert.addTextField(configurationHandler: nil)
        present(initialsAlert, animated: true)
        
    }
}
