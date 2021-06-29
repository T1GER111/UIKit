//
//  ThirdViewController.swift
//  Lesson 7
//
//  Created by T1GER on 28.06.2021.
//

import UIKit

class ThirdViewController: UIViewController {

    var firstImageView = UIImageView()
    var firstImage = UIImage()
    var secondImageView = UIImageView()
    var secondImage = UIImage()
    var thirdImageView = UIImageView()
    var thirdImage = UIImage()
    var fourthImageView = UIImageView()
    var fourthImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        firstImageView.frame = CGRect(x: 301, y: 100, width: 700, height: 650)
        firstImageView.image = firstImage
        self.firstImageView.center = self.view.center

        view.addSubview(firstImageView)
        
        
    }
}
