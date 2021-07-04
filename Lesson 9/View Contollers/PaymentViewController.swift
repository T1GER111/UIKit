//
//  SixthViewController.swift
//  Lesson 9
//
//  Created by T1GER on 01.07.2021.
//

import UIKit

final class PaymentViewController: UIViewController {

    var yourOrder = ""
    
    //MARK: - Создание кнопки.
        let firstEnterButton = UIButton()
        let secondEnterButton = UIButton()
    
    //MARK: - Создание лейблов.
        let labelOne = UILabel()
        let labelTwo = UILabel()
        let labelThree = UILabel()
        let labelFour = UILabel()
    
    //MARK: - Создание switch.
        let switchOne = UISwitch()
        let switchTwo = UISwitch()
    
            
    public override func viewDidLoad() {
            super.viewDidLoad()
            self.view.backgroundColor = .white
            navigationItem.title = "Оплата"

            //MARK: - Корректировка характеристик кнопки "Войти".
            self.firstEnterButton.frame = CGRect(x: 107, y: 699, width: 200, height: 40)
            self.firstEnterButton.center.x = self.view.center.x
            self.firstEnterButton.setTitle("💳", for: .normal)
            self.firstEnterButton.backgroundColor = .orange
            self.firstEnterButton.layer.cornerRadius = firstEnterButton.bounds.height / 2
            self.firstEnterButton.layer.shadowRadius = 4
            self.firstEnterButton.layer.shadowOpacity = 0.5
            self.firstEnterButton.layer.shadowOffset = CGSize.zero
            self.firstEnterButton.addTarget(self, action: #selector(pay), for: .touchUpInside)
            
            self.secondEnterButton.frame = CGRect(x: 107, y: 754, width: 200, height: 40)
            self.secondEnterButton.center.x = self.view.center.x
            self.secondEnterButton.setTitle("Процесс", for: .normal)
            self.secondEnterButton.backgroundColor = .orange
            self.secondEnterButton.layer.cornerRadius = firstEnterButton.bounds.height / 2
            self.secondEnterButton.layer.shadowRadius = 4
            self.secondEnterButton.layer.shadowOpacity = 0.5
            self.secondEnterButton.layer.shadowOffset = CGSize.zero
            self.secondEnterButton.addTarget(self, action: #selector(clickOnButton), for: .touchUpInside)
            
            //MARK: - Корректировка характеристик лейблов.
            self.labelOne.frame = CGRect(x: 20, y: 160, width: 180, height: 30)
            self.labelOne.text = "Ваш заказ:"
            self.labelOne.font = UIFont.systemFont(ofSize: 25)
            self.labelOne.tintColor = .orange
            
            self.labelTwo.frame = CGRect(x: 20, y: 165, width: 374, height: 270)
            self.labelTwo.text = yourOrder
            self.labelTwo.font = UIFont.systemFont(ofSize: 40)
            self.labelTwo.numberOfLines = 5
            
            self.labelThree.frame = CGRect(x: 60, y: 500, width: 168, height: 30)
            self.labelThree.text = "Оплата картой"
            self.labelThree.textColor = .orange
            self.labelThree.font = UIFont.systemFont(ofSize: 25)

            self.labelFour.frame = CGRect(x: 60, y: 540, width: 168, height: 30)
            self.labelFour.text = "Наличными"
            self.labelFour.textColor = .orange
            self.labelFour.font = UIFont.systemFont(ofSize: 25)

            //MARK: - Корректировка характеристик switch.
            self.switchOne.frame = CGRect(x: 293, y: 500, width: 0, height: 0)
            self.switchOne.tag = 0
            self.switchOne.isOn = true
            
            self.switchTwo.frame = CGRect(x: 293, y: 539, width: 0, height: 0)
            self.switchTwo.tag = 1
            self.switchTwo.isOn = false
            
            //MARK: - Добавление таргетов switch реагирующих на смену значения.
            self.switchOne.addTarget(self, action: #selector(changeSwitch(_:)), for: .valueChanged)
            self.switchTwo.addTarget(self, action: #selector(changeSwitch(_:)), for: .valueChanged)

            //MARK: - Вывод на View.
            self.view.addSubview(self.firstEnterButton)
            self.view.addSubview(self.secondEnterButton)
            self.view.addSubview(self.labelOne)
            self.view.addSubview(self.labelTwo)
            self.view.addSubview(self.labelThree)
            self.view.addSubview(self.labelFour)
            self.view.addSubview(self.switchOne)
            self.view.addSubview(self.switchTwo)


        }

        @objc func changeSwitch(_ sender: UISwitch) {
            switch sender.tag {
            case 0:
                self.switchTwo.isOn = !sender.isOn
            default:
                self.switchOne.isOn = !sender.isOn
            }
        }
    
    @objc func clickOnButton() {
        let processViewController = ProcessViewController()
        navigationController?.pushViewController(processViewController, animated: true)
    }

        @objc func pay() {
            let message = "Ваш заказ доставят в течений 15 минут! \nПриятного аппетита"
            let alertControl = UIAlertController(title: "Заказ оплачен!", message: message, preferredStyle: .alert)
            let actionOk = UIAlertAction(title: "Отлично!", style: .default) { _ in
                guard let countOfViewControllers = self.navigationController?.viewControllers.count else {return}
                if countOfViewControllers > 2 {
                    let vc = self.navigationController?.viewControllers[countOfViewControllers - 3]
                    self.navigationController?.popToViewController(vc!, animated: true)
                }
            }
            alertControl.addAction(actionOk)
            present(alertControl, animated: true, completion: nil)
        }
    }

