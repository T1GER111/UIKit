//
//  ViewController.swift
//  Lesson 7
//
//  Created by T1GER on 28.06.2021.
//

import UIKit

class FirstViewController: UIViewController {
    
    var segmentControll = UISegmentedControl()
    var firstImageView = UIImageView()
    var secondImageView = UIImageView()
    var thirdImageView = UIImageView()
    var fourImageView = UIImageView()
    var priceLabel = UILabel()
    var sum = 31990
    var dostavkaSwitch = UISwitch()
    var dostavkaLabel = UILabel()
    let enterButton = UIButton()
    var imageArray = [UIImage(named: "1.jpeg"), UIImage(named: "2.jpeg"), UIImage(named: "3.jpeg"), UIImage(named: "4.jpeg")]
    var segmentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Расположение картинки
        self.firstImageView.frame = CGRect(x: -35, y: 70, width: 250, height: 325)
        self.firstImageView.image = self.imageArray[0]
        self.view.addSubview(firstImageView)
             
        firstImageView.isUserInteractionEnabled = true
                let firstGesture = UITapGestureRecognizer(target: self, action: #selector(handleZoomOut(sender:)))
        firstImageView.addGestureRecognizer(firstGesture)
        
        
        self.secondImageView.frame = CGRect(x: 195, y: 70, width: 250, height: 325)
        self.secondImageView.image = self.imageArray[1]
        self.view.addSubview(secondImageView)
        
        secondImageView.isUserInteractionEnabled = true
                let secondGesture = UITapGestureRecognizer(target: self, action: #selector(handleZoomOut(sender:)))
        secondImageView.addGestureRecognizer(secondGesture)
        
        self.thirdImageView.frame = CGRect(x: -35, y: 400, width: 250, height: 325)
        self.thirdImageView.image = self.imageArray[2]
        self.view.addSubview(thirdImageView)
        
        thirdImageView.isUserInteractionEnabled = true
                let thirdGesture = UITapGestureRecognizer(target: self, action: #selector(handleZoomOut(sender:)))
        thirdImageView.addGestureRecognizer(thirdGesture)
        
        self.fourImageView.frame = CGRect(x: 195, y: 400, width: 250, height: 325)
        self.fourImageView.image = self.imageArray[3]
        self.view.addSubview(fourImageView)
        
        fourImageView.isUserInteractionEnabled = true
                let fourthGesture = UITapGestureRecognizer(target: self, action: #selector(handleZoomOut(sender:)))
        fourImageView.addGestureRecognizer(fourthGesture)
                        
        
        self.dostavkaSwitch.addTarget(self, action: #selector(clickOnSwitch), for: .valueChanged)
        
        self.priceLabel.text = String(sum) + " " + "рублей"
        self.priceLabel.frame = CGRect(x: 250, y: 730, width: 121, height: 21)
        view.addSubview(priceLabel)
        
        self.dostavkaSwitch.frame = CGRect(x: 340, y: 750, width: 80, height: 30)
        view.addSubview(dostavkaSwitch)
        
        self.dostavkaLabel.text = "Доставка"
        self.dostavkaLabel.frame = CGRect(x: 250, y: 750, width: 80, height: 30)
        view.addSubview(dostavkaLabel)
    
          enterButton.setTitle("Характеристики", for: .normal)
          enterButton.frame = CGRect(x: 59 , y: 800 , width: 297, height: 34)
          enterButton.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
          enterButton.backgroundColor = UIColor.gray
          enterButton.setTitleColor(.black, for: .normal)
          enterButton.setTitleColor(.gray, for: .highlighted)
        enterButton.layer.shadowColor = UIColor(red: 0.25, green: 0.5, blue: 0, alpha: 0.25).cgColor
          enterButton.layer.shadowOffset = CGSize(width: 0.0, height: 10)
          enterButton.layer.shadowRadius = 10
          enterButton.layer.shadowOpacity = 0.6
          enterButton.layer.masksToBounds = false
          enterButton.layer.cornerRadius = 5
        enterButton.addTarget(self, action: #selector(clickOnButton), for: .touchUpInside)
        view.addSubview(enterButton)
    }
    @objc func clickOnButton() {
            let fourthViewController = FourthViewController()
            navigationController?.pushViewController(fourthViewController, animated: true)
        }
          
    @objc func clickOnSwitch() {
        if dostavkaSwitch.isOn {
            priceLabel.text = "32290 рублей"
        } else {
            priceLabel.text = "31990 рублей"
        }
    }
    
    @objc func handleZoomOut(sender: UITapGestureRecognizer) {
            print("print zoom out")
          let secondViewController = SecondViewController()
        secondViewController.firstImage = imageArray[segmentIndex] ?? UIImage()
        
        navigationController?.pushViewController(secondViewController, animated: true)
        
        }
}
