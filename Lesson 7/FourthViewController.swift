//
//  FourthViewController.swift
//  Lesson 7
//
//  Created by T1GER on 29.06.2021.
//

import UIKit

class FourthViewController: UIViewController {

    var segmentControl = UISegmentedControl()
    var imageView = UIImageView()

    
    var menuArray = ["", "", "", "", "", "", ""]
    let imageArray = [UIImage(named: "5.jpeg"),
                      UIImage(named: "6.jpeg"),
                      UIImage(named: "7.jpeg"),
                      UIImage(named: "8.jpeg"),
                      UIImage(named: "9.jpeg"),
                      UIImage(named: "10.jpeg"),
                      UIImage(named: "11.jpeg")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        // Создание Image.
        
        self.imageView.frame = CGRect(x: 20, y: 20, width: 420, height: 400)
        self.imageView.center = self.view.center
        self.imageView.image = self.imageArray[0]
        self.view.addSubview(imageView)
        
        // Создание Segment.
        
        self.segmentControl = UISegmentedControl(items: menuArray)
        self.segmentControl.frame = CGRect(x: 7, y: 647, width: 400, height: 40)
        self.view.addSubview(segmentControl)
        
        self.segmentControl.addTarget(self, action: #selector(selectedValue), for: .valueChanged)

    }
    
    @objc func selectedValue(target: UISegmentedControl) {
        if target == self.segmentControl {
            let segmentIndex = target.selectedSegmentIndex
            
            self.imageView.image = self.imageArray[segmentIndex]
        }
    }
}
