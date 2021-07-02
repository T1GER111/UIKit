//
//  FourthViewController.swift
//  Lesson 9
//
//  Created by T1GER on 01.07.2021.
//

import UIKit

class FourthViewController: UIViewController {

    //MARK: - Создание кнопки.
    let firstButton = UIButton()
    let secondButton = UIButton()
    
    //MARK: - Создание лейблов.
    let firstLabel = UILabel()
    let secondLabel = UILabel()

    //MARK: - Создание картинок.
    let firstImage = UIImageView()
    let secondImage = UIImageView()
    let thirdImage = UIImageView()
    let fourthImage = UIImageView()

        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .white
            self.title = "Pizza"

            //MARK: - Корректировка характеристик кнопок "Plus".
            
            self.firstButton.frame = CGRect(x: 350, y: 197, width: 44, height: 44)
            self.firstButton.setTitle("+", for: .normal)
            self.firstButton.tintColor = .white
            self.firstButton.backgroundColor = .orange
            self.firstButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 26)
            self.firstButton.layer.cornerRadius = 11
            self.firstButton.layer.shadowRadius = 4
            self.firstButton.layer.shadowOpacity = 0.5
            self.firstButton.layer.shadowOffset = .zero
            self.firstButton.tag = 0
            self.firstButton.addTarget(self, action: #selector(goToFifthViewController), for: .touchUpInside)
            
            self.secondButton.frame = CGRect(x: 350, y: 333, width: 44, height: 44)
            self.secondButton.setTitle("+", for: .normal)
            self.secondButton.tintColor = .white
            self.secondButton.backgroundColor = .orange
            self.secondButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 26)
            self.secondButton.layer.cornerRadius = 11
            self.secondButton.layer.shadowRadius = 4
            self.secondButton.layer.shadowOpacity = 0.5
            self.secondButton.layer.shadowOffset = .zero
            self.secondButton.tag = 1
            self.secondButton.addTarget(self, action: #selector(goToFifthViewController), for: .touchUpInside)
            
            //MARK: - Корректировка характеристик лейблов.
            self.firstLabel.frame = CGRect(x: 158, y: 201, width: 160, height: 37)
            self.firstLabel.text = "Маргарита"
            self.firstLabel.font = UIFont.systemFont(ofSize: 31)
            
            self.secondLabel.frame = CGRect(x: 158, y: 337, width: 160, height: 37)
            self.secondLabel.text = "Пепперони"
            self.secondLabel.font = UIFont.systemFont(ofSize: 31)

            //MARK: - Корректировка характеристик картинок.
            self.firstImage.frame = CGRect(x: 20, y: 155, width: 130, height: 130)
            self.firstImage.image = UIImage(named: "margarita")
            self.secondImage.frame = CGRect(x: 20, y: 291, width: 130, height: 130)
            self.secondImage.image = UIImage(named: "pepperoni")
            
            self.thirdImage.frame = CGRect(x: 0, y: 69, width: 414, height: 413)
            self.thirdImage.image = UIImage(named: "pizza10")
            self.fourthImage.frame = CGRect(x: 0, y: 480, width: 414, height: 416)
            self.fourthImage.image = UIImage(named: "pizza10")

            //MARK: - Вывод на View.
            self.view.addSubview(thirdImage)
            self.view.addSubview(fourthImage)
            self.view.addSubview(firstButton)
            self.view.addSubview(secondButton)
            self.view.addSubview(firstLabel)
            self.view.addSubview(secondLabel)
            self.view.addSubview(firstImage)
            self.view.addSubview(secondImage)
    
    }
        @objc func goToFifthViewController(_ sender : UIButton) {
            let fifthViewController = FifthViewController()
            fifthViewController.nameOfPizza = (sender.tag == 0 ? "Маргарита":"Пепперони")
            fifthViewController.tempNC = self.navigationController!
            let newNC = UINavigationController(rootViewController: fifthViewController)
            present(newNC, animated: true, completion: nil)
    }
}
