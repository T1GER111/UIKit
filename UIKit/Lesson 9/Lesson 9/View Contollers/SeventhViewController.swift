//
//  SeventhViewController.swift
//  Lesson 9
//
//  Created by T1GER on 02.07.2021.
//

import UIKit

class SeventhViewController: UIViewController {

    //MARK: - Создание лейблов.
        var firstLabel = UILabel()
        var secondLabel = UILabel()
    
    //MARK: - Cоздание сегмента.
        var segmentControl = UISegmentedControl()
    
    //MARK: - Создание картинок.
        var firstImageView = UIImageView()
        var secondImageView = UIImageView()
    
    //MARK: - Создание массива.
        var menuArray = ["", "", ""]
        let imageArray = [UIImage(named: "pizza12"),
                          UIImage(named: "pizza13"),
                          UIImage(named: "pizza14")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: - Корректировка характеристик лейблов.
        self.firstLabel.frame = CGRect(x: 0, y: 282, width: 414, height: 60)
        self.firstLabel.textAlignment = .center
        self.firstLabel.text = "Каждый кусочек приготовлен с любовью!"
        self.firstLabel.font = UIFont(name:"fontname", size: 18.0)
        self.firstLabel.font = UIFont.boldSystemFont(ofSize: 18.0)
        
        self.secondLabel.frame = CGRect(x: 20, y: 374, width: 374, height: 50)
        self.secondLabel.textAlignment = .center
        self.secondLabel.text = "Магический процесс"
        self.secondLabel.adjustsFontSizeToFitWidth = true
        self.secondLabel.numberOfLines = 0
        self.secondLabel.font = UIFont(name:"fontname", size: 20.0)
        self.secondLabel.font = UIFont.boldSystemFont(ofSize: 24.0)

        //MARK: - Корректировка характеристик картинок.
        self.firstImageView.frame = CGRect(x: 20, y: 432, width: 374, height: 372)
        self.firstImageView.image = self.imageArray[0]
        
        self.secondImageView.frame = CGRect(x: 20, y: 87, width: 374, height: 141)
        self.secondImageView.image = UIImage(named: "ДОДО-Пицца")
        
        //MARK: - Корректировка характеристик сегментов.
        self.segmentControl = UISegmentedControl(items: self.imageArray)
        self.segmentControl.frame = CGRect(x: 20, y: 812, width: 374, height: 31)
        self.segmentControl.addTarget(self, action: #selector(selectedValue), for: .valueChanged)
        self.segmentControl.layer.borderColor = UIColor.orange.cgColor
        self.segmentControl.layer.borderWidth = 1
        self.segmentControl.layer.masksToBounds = true
        self.segmentControl.backgroundColor = .white
        
        //MARK: - Вывод на View.
        self.view.addSubview(segmentControl)
        self.view.addSubview(firstImageView)
        self.view.addSubview(secondImageView)
        self.view.addSubview(firstLabel)
        self.view.addSubview(secondLabel)
        
    }
    @objc func selectedValue(target: UISegmentedControl) {
        if target == self.segmentControl {
            let segmentIndex = target.selectedSegmentIndex
            
            self.firstImageView.image = self.imageArray[segmentIndex]
        }
    }
}
