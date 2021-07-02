//
//  FifthViewController.swift
//  Lesson 9
//
//  Created by T1GER on 01.07.2021.
//

import UIKit

class FifthViewController: UIViewController {
    
    var nameOfPizza = ""
    var tempNC = UINavigationController()
    
    //MARK: - Создание кнопки.
    let enterButton = UIButton()

    //MARK: - Создание лейблов.
    let titleOfPizzaName = UILabel()
    let cheeseLabel = UILabel()
    let hamLabel = UILabel()
    let mushroomsLabel = UILabel()
    let olivesLabel = UILabel()

    //MARK: - Создание картинок.
    let mainImage = UIImageView()

    //MARK: - Создание switch.
    let cheeseSwitch = UISwitch()
    let hamSwitch = UISwitch()
    let mushroomsSwitch = UISwitch()
    let olivesSwitch = UISwitch()

    //MARK: - Выключение Switch.
        var cheese = false
        var ham = false
        var mushrooms = false
        var olives = false

        override func viewDidLoad() {
            super.viewDidLoad()
            self.navigationItem.title = ""
            self.navigationController?.navigationBar.backgroundColor = .orange
            self.navigationController?.navigationBar.isTranslucent = true
            view.backgroundColor = .white
            
            //MARK: - Корректировка характеристик кнопки "Войти".
            self.enterButton.frame = CGRect(x: 107, y: 699, width: 200, height: 30)
            self.enterButton.setTitle("Выбрать", for: .normal)
            self.enterButton.backgroundColor = .orange
            self.enterButton.layer.cornerRadius = enterButton.bounds.height / 2
            self.enterButton.layer.shadowRadius = 4
            self.enterButton.layer.shadowOpacity = 0.5
            self.enterButton.layer.shadowOffset = CGSize.zero
            self.enterButton.addTarget(self, action: #selector(goToSixthViewController), for: .touchUpInside)
            
            //MARK: - Корректировка характеристик тайтла "Pizza Name".
            self.titleOfPizzaName.frame = CGRect(x: 0, y: 0, width: 420, height: 60)
            self.titleOfPizzaName.font = UIFont.boldSystemFont(ofSize: 25)
            self.titleOfPizzaName.textAlignment = .center
            self.titleOfPizzaName.backgroundColor = .orange
            self.titleOfPizzaName.text = nameOfPizza

            //MARK: - Корректировка характеристик картинки.
            self.mainImage.frame = CGRect(x: 30, y: 100, width: 330, height: 330)
            self.mainImage.center.x = self.view.center.x
            self.mainImage.image = nameOfPizza == "Маргарита" ? UIImage(named: "margarita.png") : UIImage(named: "pepperoni.png")

            //MARK: - Корректировка характеристик лейблов.
            self.cheeseLabel.frame = CGRect(x: 42, y: 480, width: 160, height: 25)
            self.cheeseLabel.text = "Сыр моцарелла"
            
            self.hamLabel.frame = CGRect(x: 42, y: 530, width: 160, height: 25)
            self.hamLabel.text = "Ветчина"
            
            self.mushroomsLabel.frame = CGRect(x: 42, y: 580, width: 160, height: 25)
            self.mushroomsLabel.text = "Грибы"
            
            self.olivesLabel.frame = CGRect(x: 42, y: 630, width: 160, height: 25)
            self.olivesLabel.text = "Маслины"

            //MARK: - Корректировка характеристик switch.
            self.cheeseSwitch.frame = CGRect(x: 325, y: 477, width: 0, height: 0)
            self.cheeseSwitch.tag = 0
            
            self.hamSwitch.frame = CGRect(x: 325, y: 527, width: 0, height: 0)
            self.hamSwitch.tag = 1
            
            self.mushroomsSwitch.frame = CGRect(x: 325, y: 577, width: 0, height: 0)
            self.mushroomsSwitch.tag = 2
            
            self.olivesSwitch.frame = CGRect(x: 325, y: 627, width: 0, height: 0)
            self.olivesSwitch.tag = 3

            //MARK: - Добавление таргетов switch реагирующих на изменение значения.
            cheeseSwitch.addTarget(self, action: #selector(choice(_:)), for: .valueChanged)
            hamSwitch.addTarget(self, action: #selector(choice(_:)), for: .valueChanged)
            mushroomsSwitch.addTarget(self, action: #selector(choice(_:)), for: .valueChanged)
            olivesSwitch.addTarget(self, action: #selector(choice(_:)), for: .valueChanged)

            //MARK: - Вывод на View.
            self.view.addSubview(mainImage)
            self.view.addSubview(cheeseLabel)
            self.view.addSubview(hamLabel)
            self.view.addSubview(mushroomsLabel)
            self.view.addSubview(olivesLabel)
            self.view.addSubview(cheeseSwitch)
            self.view.addSubview(hamSwitch)
            self.view.addSubview(mushroomsSwitch)
            self.view.addSubview(olivesSwitch)
            self.view.addSubview(enterButton)
            self.view.addSubview(mainImage)
            self.navigationController?.navigationBar.addSubview(titleOfPizzaName)
    }
    
        @objc func choice(_ sender: UISwitch) {
            switch sender.tag {
            case 0:
                cheese = sender.isOn
            case 1:
                ham = sender.isOn
            case 2:
                mushrooms = sender.isOn
            case 3:
                olives = sender.isOn
            default:
                return
            }
        }
    
        @objc func goToSixthViewController() {
            var yourOrder = ""
            var number = 1
            let sixthViewController = SixthViewController()

            yourOrder = String(number) + ". Пицца " + nameOfPizza + "\n"
            if cheese {
                number += 1
                yourOrder += String(number) + ". Сыр моцарелла \n"
            }
            if ham {
                number += 1
                yourOrder += String(number) + ". Ветчина \n"
            }
            if mushrooms {
                number += 1
                yourOrder += String(number) + ". Грибы \n"
            }
            if olives {
                number += 1
                yourOrder += String(number) + ". Маслины"
            }
            sixthViewController.yourOrder = yourOrder
            dismiss(animated: false, completion: nil)
            tempNC.pushViewController(sixthViewController, animated: true)
    }
}
