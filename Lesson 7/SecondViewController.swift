//
//  SecondViewController.swift
//  Lesson 7
//
//  Created by T1GER on 28.06.2021.
//

import UIKit

class SecondViewController: UIViewController {
        
    var firstImageView = UIImageView()
    var firstImage = UIImage()
    var secondImageView = UIImageView()
    var secondImage = UIImage()
    var thirdImageView = UIImageView()
    var thirdImage = UIImage()
    var fourthImageView = UIImageView()
    var fourthImage = UIImage()
    let enterButton = UIButton()
    var segmentControl = UISegmentedControl()
    var imageView = UIImageView()

    
    var menuArray = ["", "", "", "", "", "", ""]
    let imageArray = [UIImage(named: "12.jpeg"),
                      UIImage(named: "13.jpeg"),
                      UIImage(named: "14.jpeg"),
                      UIImage(named: "15.jpeg"),
                      UIImage(named: "16.jpeg"),
                      UIImage(named: "17.jpeg"),
                      UIImage(named: "18.jpeg")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        firstImageView.frame = CGRect(x: 301, y: 100, width: 700, height: 650)
        firstImageView.image = firstImage
        self.firstImageView.center = self.view.center

        view.addSubview(firstImageView)
        
        secondImageView.frame = CGRect(x: 21, y: 100, width: 200, height: 250)
        secondImageView.image = secondImage
        self.secondImageView.center = self.view.center

        view.addSubview(secondImageView)
        
        thirdImageView.frame = CGRect(x: 21, y: 100, width: 200, height: 250)
        thirdImageView.image = thirdImage
        self.thirdImageView.center = self.view.center

        view.addSubview(thirdImageView)
        
        fourthImageView.frame = CGRect(x: 21, y: 100, width: 200, height: 250)
        fourthImageView.image = fourthImage
        self.fourthImageView.center = self.view.center

        view.addSubview(fourthImageView)
        
        enterButton.setTitle("Купить", for: .normal)
        enterButton.frame = CGRect(x: 59 , y: 800 , width: 297, height: 34)
        enterButton.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        enterButton.backgroundColor = UIColor.gray
        enterButton.setTitleColor(.black, for: .normal)
        enterButton.setTitleColor(.gray, for: .highlighted)
        enterButton.layer.masksToBounds = false
        enterButton.layer.cornerRadius = 5
      enterButton.addTarget(self, action: #selector(clickOnButton), for: .touchUpInside)
      view.addSubview(enterButton)
        
        self.firstImageView.frame = CGRect(x: -35, y: 70, width: 650, height: 700)
        self.view.addSubview(firstImageView)
        self.firstImageView.center = self.view.center
        
        firstImageView.isUserInteractionEnabled = true
                let firstGesture = UITapGestureRecognizer(target: self, action: #selector(handleZoomOut(sender:)))
        firstImageView.addGestureRecognizer(firstGesture)
        
        // Создание Image.
        
        self.imageView.frame = CGRect(x: 20, y: 20, width: 600, height: 650)
        self.imageView.center = self.view.center
        self.imageView.image = self.imageArray[0]
        self.view.addSubview(imageView)
        
        // Создание Segment.
        
        self.segmentControl = UISegmentedControl(items: menuArray)
        self.segmentControl.frame = CGRect(x: 59, y: 760, width: 297, height: 34)
        self.view.addSubview(segmentControl)
        
        self.segmentControl.addTarget(self, action: #selector(selectedValue), for: .valueChanged)

    }
    @objc func handleZoomOut(sender: UITapGestureRecognizer) {
            print("print zoom out")
          let thirdViewController = ThirdViewController()
        navigationController?.pushViewController(thirdViewController, animated: true)
        }
    
    @objc func selectedValue(target: UISegmentedControl) {
        if target == self.segmentControl {
            let segmentIndex = target.selectedSegmentIndex
            
            self.imageView.image = self.imageArray[segmentIndex]
        }
    }
    @objc func clickOnButton() {
            let thirdViewController = ThirdViewController()
            navigationController?.pushViewController(thirdViewController, animated: true)
        }
}

    
