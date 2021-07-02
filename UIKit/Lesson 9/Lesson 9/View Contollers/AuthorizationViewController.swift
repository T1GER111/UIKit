//
//  SecondViewController.swift
//  Lesson 9
//
//  Created by T1GER on 01.07.2021.
//

import UIKit

class AuthorizationViewController: UIViewController {

    //MARK: - Создание лейблов.
        let signInLabel = UILabel()
        let emailLabel = UILabel()
        let passwordLabel = UILabel()
        let firstEmptyLabel = UILabel()
        let secondEmptyLabel = UILabel()

        //MARK: - Создание текстфилдов.
        let emailTextField = UITextField()
        let passwordTextField = UITextField()

        //MARK: - Создание картинки.
        let eyeImage = UIImageView(image: UIImage(systemName: "eye.fill"))
        let firstImageView = UIImageView()

        //MARK: - Создание кнопки.
        let enterButton = UIButton()
        let eyeButton = UIButton()

        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .white
            self.title = "Авторизация"
            emailTextField.keyboardType = .numberPad
            
        //MARK: - Корректировка характеристик кнопки "Eye"
            self.eyeButton.frame = CGRect(x: 334, y: 419.5, width: 32, height: 20)
            self.eyeButton.setImage(UIImage(systemName: "eye.fill"), for: .normal)
            self.eyeButton.addTarget(self, action: #selector(eyeOnOff), for: .touchUpInside)
            self.eyeButton.tintColor = .orange
                
        //MARK: - Корректировка характеристик кнопки "Войти".
            self.enterButton.setTitle("Войти", for: .normal)
            self.enterButton.frame = CGRect(x: 59 , y: 609 , width: 297, height: 34)
            self.enterButton.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
            self.enterButton.backgroundColor = UIColor.orange
            self.enterButton.setTitleColor(.white, for: .normal)
            self.enterButton.setTitleColor(.gray, for: .highlighted)
            self.enterButton.layer.shadowColor = UIColor(red: 1, green: 0, blue: 0, alpha: 0.25).cgColor
            self.enterButton.layer.shadowOffset = CGSize(width: 0.0, height: 10)
            self.enterButton.layer.shadowRadius = 10
            self.enterButton.layer.shadowOpacity = 0.6
            self.enterButton.layer.masksToBounds = false
            self.enterButton.layer.cornerRadius = 5
            self.enterButton.addTarget(self, action: #selector(clickOnButton), for: .touchUpInside)

        //MARK: - Корректировка характеристик лейбла "Email".
            self.emailLabel.text = "Number"
            self.emailLabel.frame = CGRect(x: 39, y: 284, width: 70, height: 27)
            self.emailLabel.font.withSize(11)
            self.emailLabel.textAlignment = .center
            self.emailLabel.backgroundColor = UIColor.white
            self.emailLabel.textColor = UIColor.orange

        //MARK: - Корректировка характеристик лейбла "Password".
            self.passwordLabel.text = "Password"
            self.passwordLabel.frame = CGRect(x: 39, y: 376, width: 80, height: 29)
            self.passwordLabel.font.withSize(11)
            self.passwordLabel.textAlignment = .center
            self.passwordLabel.backgroundColor = UIColor.white
            self.passwordLabel.textColor = UIColor.orange
            
        //MARK: - Корректировка характеристик лейбла "firstEmptyLabel".
            self.firstEmptyLabel.text = ""
            self.firstEmptyLabel.frame = CGRect(x: 20, y: 367, width: 374, height: 1)
            self.firstEmptyLabel.backgroundColor = .gray
            
        //MARK: - Корректировка характеристик лейбла "secondEmptyLabel".
            self.secondEmptyLabel.text = ""
            self.secondEmptyLabel.frame = CGRect(x: 20, y: 461, width: 374, height: 1)
            self.secondEmptyLabel.backgroundColor = .gray

        //MARK: - Корректировка характеристик текстфилда "Email".
            self.emailTextField.frame = CGRect(x: 44, y: 319, width: 326, height: 34)
            self.emailTextField.font?.withSize(14)
            self.emailTextField.placeholder = "+374 77 777 777"
            
        //MARK: - Корректировка характеристик текстфилда "Password".
            self.passwordTextField.frame = CGRect(x: 44, y: 413, width: 326, height: 34)
            self.passwordTextField.font?.withSize(14)
            self.passwordTextField.placeholder = "● ● ● ● ● ● ● ●"
            self.passwordTextField.isSecureTextEntry = true

        //MARK: - Корректировка характеристик картинки "firstImage"
            self.firstImageView.frame = CGRect(x: 20, y: 89, width: 374, height: 128)
            self.firstImageView.image = UIImage(named: "ДОДО-Пицца")
            
        //MARK: - Вывод на View.
            self.view.addSubview(self.signInLabel)
            self.view.addSubview(self.emailLabel)
            self.view.addSubview(self.passwordLabel)
            self.view.addSubview(self.emailTextField)
            self.view.addSubview(self.passwordTextField)
            self.view.addSubview(self.eyeImage)
            self.view.addSubview(self.firstImageView)
            self.view.addSubview(self.enterButton)
            self.view.addSubview(self.eyeButton)
            self.view.addSubview(self.firstEmptyLabel)
            self.view.addSubview(self.secondEmptyLabel)

        }
        @objc func clickOnButton() {
            let menuViewContoller = MenuViewController()
            navigationController?.pushViewController(menuViewContoller, animated: true)
        }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    @objc func eyeOnOff() {
            passwordTextField.isSecureTextEntry.toggle()
        }
}
