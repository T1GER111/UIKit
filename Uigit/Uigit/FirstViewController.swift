//
//  ViewController.swift
//  Uigit
//
//  Created by T1GER on 22.06.2021.
//

import UIKit

class FirstViewController: UIViewController {
        
    //MARK: - Создание лейблов.
    let birthdayReminderLabel = UILabel()
    let signInLabel = UILabel()
    let emailLabel = UILabel()
    let passwordLabel = UILabel()
    let faceIdCheckLabel = UILabel()
    
    //MARK: - Создание текстфилдов.
    let emailTextField = UITextField()
    let passwordTextField = UITextField()
    
    //MARK: - Создание свитча.
    let switchOfFaceId = UISwitch()
        
    //MARK: - Создание картинки.
    let eyeImage = UIImageView(image: UIImage(systemName: "eye.fill"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    //MARK: - Корректировка характеристик кнопки "Войти".
      
        let enterButton = UIButton()
        enterButton.setTitle("Войти", for: .normal)
        enterButton.frame = CGRect(x: 59 , y: 609 , width: 297, height: 34)
        enterButton.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        enterButton.backgroundColor = UIColor.systemBlue
        enterButton.setTitleColor(.white, for: .normal)
        enterButton.setTitleColor(.gray, for: .highlighted)
        enterButton.layer.shadowColor = UIColor(red: 1, green: 0, blue: 0, alpha: 0.25).cgColor
        enterButton.layer.shadowOffset = CGSize(width: 0.0, height: 10)
        enterButton.layer.shadowRadius = 10
        enterButton.layer.shadowOpacity = 0.6
        enterButton.layer.masksToBounds = false
        enterButton.layer.cornerRadius = 5
        enterButton.addTarget(self, action: #selector(clickOnButton), for: .touchUpInside)
        
    //MARK: - Корректировка характеристик лейбла "Birthday Reminder".
        self.birthdayReminderLabel.text = "Birthday Reminder"
        self.birthdayReminderLabel.frame = CGRect(x: 110, y: 75, width: 195, height: 65)
        self.birthdayReminderLabel.font.withSize(20)
        self.birthdayReminderLabel.textAlignment = .center
        self.birthdayReminderLabel.backgroundColor = UIColor.white
        self.birthdayReminderLabel.textColor = UIColor.systemBlue
        
    //MARK: - Корректировка характеристик лейбла "Sign In".
        self.signInLabel.text = "Sign In"
        self.signInLabel.frame = CGRect(x: 44, y: 237, width: 60, height: 24)
        self.signInLabel.font.withSize(34)
        self.signInLabel.backgroundColor = UIColor.white
        self.signInLabel.textColor = UIColor.black
        
    //MARK: - Корректировка характеристик лейбла "Email".
        self.emailLabel.text = "Email"
        self.emailLabel.frame = CGRect(x: 39, y: 284, width: 50, height: 27)
        self.emailLabel.font.withSize(11)
        self.emailLabel.textAlignment = .center
        self.emailLabel.backgroundColor = UIColor.white
        self.emailLabel.textColor = UIColor.systemBlue
        
    //MARK: - Корректировка характеристик лейбла "Password".
        self.passwordLabel.text = "Password"
        self.passwordLabel.frame = CGRect(x: 39, y: 376, width: 80, height: 29)
        self.passwordLabel.font.withSize(11)
        self.passwordLabel.textAlignment = .center
        self.passwordLabel.backgroundColor = UIColor.white
        self.passwordLabel.textColor = UIColor.systemBlue
        
    //MARK: - Корректировка характеристик лейбла "Face Id Check".
        self.faceIdCheckLabel.text = "Вход по Face ID"
        self.faceIdCheckLabel.frame = CGRect(x: 174, y: 475, width: 130, height: 16)
        self.faceIdCheckLabel.font.withSize(13)
        
    //MARK: - Корректировка характеристик текстфилда "Email".
        self.emailTextField.frame = CGRect(x: 44, y: 319, width: 326, height: 34)
        self.emailTextField.font?.withSize(14)
        self.emailTextField.placeholder = "example@mail.ru"
    //MARK: - Корректировка характеристик текстфилда "Password".
        self.passwordTextField.frame = CGRect(x: 44, y: 413, width: 326, height: 34)
        self.passwordTextField.font?.withSize(14)
        self.passwordTextField.placeholder = "********"
        self.passwordTextField.isSecureTextEntry = true
        
    //MARK: - Корректировка характеристик картинки "Eye"
        self.eyeImage.frame = CGRect(x: 334, y: 419.5, width: 32, height: 20)
        self.eyeImage.tintColor = UIColor.gray
        
    //MARK: - Корректировка характеристик свитча "switchOfFaceId".
        self.switchOfFaceId.frame = CGRect(x: 313, y: 468, width: 49, height: 31)
        
    //MARK: - Вывод на View.
        self.view.addSubview(self.birthdayReminderLabel)
        self.view.addSubview(self.signInLabel)
        self.view.addSubview(self.emailLabel)
        self.view.addSubview(self.passwordLabel)
        self.view.addSubview(self.faceIdCheckLabel)
        self.view.addSubview(self.emailTextField)
        self.view.addSubview(self.passwordTextField)
        self.view.addSubview(self.switchOfFaceId)
        self.view.addSubview(self.eyeImage)
        view.addSubview(enterButton)

    }
    @objc func clickOnButton() {
        let secondViewController = SecondViewController()
        navigationController?.pushViewController(secondViewController, animated: true)
    }
}

