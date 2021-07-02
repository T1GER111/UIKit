//
//  ThirdViewController.swift
//  Lesson 9
//
//  Created by T1GER on 01.07.2021.
//

import UIKit

class ThirdViewController: UIViewController {

    //MARK: - Создание лейблов.
    let pizzaLabel = UILabel()
    let sushiLabel = UILabel()
    
    //MARK: - Создание кнопки.
    let button = UIButton()
    
    //MARK: - Cоздание сегментов.
        var firstSegmentControl = UISegmentedControl()
        var secondSegmentControl = UISegmentedControl()
        
    //MARK: - Создание картинок.
        var firstImageView = UIImageView()
        var secondImageView = UIImageView()
    
    //MARK: - Создание массива.
        var firstMenuArray = ["🍽", "🍕"]
        let firstImageArray = [UIImage(named: "pizza1"),
                               UIImage(named: "pizza2")]
        var secondMenuArray = ["🥢", "🍱"]
        let secondImageArray = [UIImage(named: "sushi1"),
                                UIImage(named: "sushi2")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: true)
        self.title = "Ассортимент"
        
        //MARK: - Корректировка характеристик кнопки "Войти".
        self.button.frame = CGRect(x: 20 , y: 101 , width: 374 , height: 60)
        self.button.setTitle("", for: .normal)
        self.button.backgroundColor = UIColor.orange
        self.button.layer.cornerRadius = 5
        self.button.addTarget(self, action: #selector(clickOnButton), for: .touchUpInside)
        
        //MARK: - Корректировка характеристик лейбла "Пицца".
        self.pizzaLabel.frame = CGRect(x: 20, y: 101, width: 374, height: 60)
        self.pizzaLabel.text = "Пицца"
        self.pizzaLabel.tintColor = .white
        self.pizzaLabel.textAlignment = .center
        self.pizzaLabel.tintColor = .white
        self.pizzaLabel.font = UIFont(name:"ArialRoundedMTBold", size: 23.0)
        
        //MARK: - Корректировка характеристик лейбла "Суши".
        self.sushiLabel.frame = CGRect(x: 20, y: 490, width: 374, height: 60)
        self.sushiLabel.text = "Суши"
        self.sushiLabel.tintColor = .white
        self.sushiLabel.textAlignment = .center
        self.sushiLabel.tintColor = .white
        self.sushiLabel.backgroundColor = .orange
        self.sushiLabel.font = UIFont(name:"ArialRoundedMTBold", size: 23.0)
        
        //MARK: - Корректировка характеристик картинок.
        self.firstImageView.frame = CGRect(x: 20, y: 169, width: 374, height: 270)
        self.firstImageView.image = self.firstImageArray[0]
        
        self.secondImageView.frame = CGRect(x: 20, y: 563, width: 374, height: 270)
        self.secondImageView.image = self.secondImageArray[0]
        
        //MARK: - Корректировка характеристик сегментов.
        self.firstSegmentControl = UISegmentedControl(items: self.firstImageArray)
        self.firstSegmentControl.frame = CGRect(x: 20, y: 447, width: 374, height: 31)
        self.firstSegmentControl.addTarget(self, action: #selector(firstSelectedValue), for: .valueChanged)
        self.firstSegmentControl.layer.borderColor = UIColor.orange.cgColor
        self.firstSegmentControl.layer.borderWidth = 1
        self.firstSegmentControl.layer.masksToBounds = true
        
        self.secondSegmentControl = UISegmentedControl(items: self.secondImageArray)
        self.secondSegmentControl.frame = CGRect(x: 20, y: 841, width: 374, height: 31)
        self.secondSegmentControl.addTarget(self, action: #selector(secondSelectedValue), for: .valueChanged)
        self.secondSegmentControl.layer.borderColor = UIColor.orange.cgColor
        self.secondSegmentControl.layer.borderWidth = 1
        self.secondSegmentControl.layer.masksToBounds = true

        //MARK: - Вывод на View.
        self.view.addSubview(button)
        self.view.addSubview(pizzaLabel)
        self.view.addSubview(sushiLabel)
        self.view.addSubview(firstImageView)
        self.view.addSubview(firstSegmentControl)
        self.view.addSubview(secondImageView)
        self.view.addSubview(secondSegmentControl)
    }
    @objc func clickOnButton() {
        let fourthViewController = FourthViewController()
        navigationController?.pushViewController(fourthViewController, animated: true)
    }
    @objc func firstSelectedValue(target: UISegmentedControl) {
        if target == self.firstSegmentControl {
            let firstSegmentIndex = target.selectedSegmentIndex
            
            self.firstImageView.image = self.firstImageArray[firstSegmentIndex]
        }
    }
    @objc func secondSelectedValue(target: UISegmentedControl) {
        if target == self.secondSegmentControl {
            let secondSegmentIndex = target.selectedSegmentIndex
            
            self.secondImageView.image = self.secondImageArray[secondSegmentIndex]
        }
    }
}
