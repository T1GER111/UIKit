//
//  SecondViewController.swift
//  Uigit
//
//  Created by T1GER on 25.06.2021.
//

import UIKit

class SecondViewController: UIViewController {

    
    let firstNameLabel = UILabel()
    let secondNameLabel = UILabel()
    let thirdNameLabel = UILabel()
    let firstTextLabel = UILabel()
    let secondTextLabel = UILabel()
    let thirdTextLabel = UILabel()
    let firstDaysCountLabel = UILabel()
    let secondDaysCountLabel = UILabel()
    let thirdDaysCountLabel = UILabel()
    let firstLineLabel = UILabel()
    let secondLineLabel = UILabel()
    let thirdLineLabel = UILabel()
    let imageOfFirstLabel = UIImageView(image: UIImage(systemName: "person.crop.circle.fill"))
    let imageOfSecondLabel = UIImageView(image: UIImage(systemName: "person.crop.circle.fill"))
    let imageOfThirdLabel = UIImageView(image: UIImage(systemName: "person.crop.circle.fill"))
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        //MARK: - Корректировка характеристик лейблов.
        self.firstNameLabel.text = "Jeremy"
        self.firstNameLabel.frame = CGRect(x: 59, y: 124, width: 56, height: 25)
        self.firstNameLabel.font.withSize(17)
        self.firstNameLabel.backgroundColor = UIColor.white
        self.firstNameLabel.textColor = UIColor.black
        
        self.secondNameLabel.text = "Maryanna"
        self.secondNameLabel.frame = CGRect(x: 59, y: 224, width: 75, height: 21)
        self.secondNameLabel.font.withSize(17)
        self.secondNameLabel.backgroundColor = UIColor.white
        self.secondNameLabel.textColor = UIColor.black
    
        self.thirdNameLabel.text = "Tony Sralk"
        self.thirdNameLabel.frame = CGRect(x: 59, y: 325, width: 81, height: 21)
        self.thirdNameLabel.font.withSize(17)
        self.thirdNameLabel.backgroundColor = UIColor.white
        self.thirdNameLabel.textColor = UIColor.black
        
        self.firstTextLabel.text = "10  марта, в среду исполнится 25 лет"
        self.firstTextLabel.frame = CGRect(x: 59, y: 155, width: 297, height: 21)
        self.firstTextLabel.font.withSize(17)
        self.firstTextLabel.backgroundColor = UIColor.white
        self.firstTextLabel.textColor = UIColor.gray
        
        self.secondTextLabel.text = "30 марта,в четверг исполнится 20 лет"
        self.secondTextLabel.frame = CGRect(x: 59, y: 253, width: 306, height: 21)
        self.secondTextLabel.font.withSize(17)
        self.secondTextLabel.backgroundColor = UIColor.white
        self.secondTextLabel.textColor = UIColor.gray
        
        self.thirdTextLabel.text = "20 апреля,в субботу исполнится  25 лет"
        self.thirdTextLabel.frame = CGRect(x: 59, y: 354, width: 319, height: 21)
        self.thirdTextLabel.font.withSize(17)
        self.thirdTextLabel.backgroundColor = UIColor.white
        self.thirdTextLabel.textColor = UIColor.gray
        
        self.firstDaysCountLabel.text = "18 дней"
        self.firstDaysCountLabel.frame = CGRect(x: 299, y: 124, width: 66, height: 21)
        self.firstDaysCountLabel.font.withSize(17)
        self.firstDaysCountLabel.backgroundColor = UIColor.white
        self.firstDaysCountLabel.textColor = UIColor.gray
        
        self.secondDaysCountLabel.text = "28 дней"
        self.secondDaysCountLabel.frame = CGRect(x: 299, y: 224, width: 66, height: 21)
        self.secondDaysCountLabel.font.withSize(17)
        self.secondDaysCountLabel.backgroundColor = UIColor.white
        self.secondDaysCountLabel.textColor = UIColor.gray
        
        self.thirdDaysCountLabel.text = "53 дней"
        self.thirdDaysCountLabel.frame = CGRect(x: 299, y: 324, width: 66, height: 21)
        self.thirdDaysCountLabel.font.withSize(17)
        self.thirdDaysCountLabel.backgroundColor = UIColor.white
        self.thirdDaysCountLabel.textColor = UIColor.gray
        
        self.firstLineLabel.text = ""
        self.firstLineLabel.frame = CGRect(x: 20, y: 201, width: 394, height: 1)
        self.firstLineLabel.font.withSize(17)
        self.firstLineLabel.backgroundColor = UIColor.gray
        
        self.secondLineLabel.text = ""
        self.secondLineLabel.frame = CGRect(x: 20, y: 297, width: 394, height: 1)
        self.secondLineLabel.font.withSize(17)
        self.secondLineLabel.backgroundColor = UIColor.gray
        
        self.thirdLineLabel.text = ""
        self.thirdLineLabel.frame = CGRect(x: 20, y: 398, width: 394, height: 1)
        self.thirdLineLabel.font.withSize(17)
        self.thirdLineLabel.backgroundColor = UIColor.gray
        
        self.imageOfFirstLabel.frame = CGRect(x: 0, y: 127, width: 57, height: 68)
        self.imageOfFirstLabel.backgroundColor = UIColor.black
        self.imageOfFirstLabel.backgroundColor = UIColor.clear
        self.imageOfFirstLabel.tintColor = .gray
        
        self.imageOfSecondLabel.frame = CGRect(x: 0, y: 224.5, width: 57, height: 66)
        self.imageOfSecondLabel.backgroundColor = UIColor.black
        self.imageOfSecondLabel.backgroundColor = UIColor.clear
        self.imageOfSecondLabel.tintColor = .gray
        
        self.imageOfThirdLabel.frame = CGRect(x: 0, y: 323.5, width: 57, height: 66)
        self.imageOfThirdLabel.backgroundColor = UIColor.black
        self.imageOfThirdLabel.backgroundColor = UIColor.clear
        self.imageOfThirdLabel.tintColor = .gray
                
        //MARK: - Вывод на View.
        self.view.addSubview(firstNameLabel)
        self.view.addSubview(secondNameLabel)
        self.view.addSubview(thirdNameLabel)
        self.view.addSubview(firstTextLabel)
        self.view.addSubview(secondTextLabel)
        self.view.addSubview(thirdTextLabel)
        self.view.addSubview(firstDaysCountLabel)
        self.view.addSubview(secondDaysCountLabel)
        self.view.addSubview(thirdDaysCountLabel)
        self.view.addSubview(firstLineLabel)
        self.view.addSubview(secondLineLabel)
        self.view.addSubview(thirdLineLabel)
        self.view.addSubview(imageOfFirstLabel)
        self.view.addSubview(imageOfSecondLabel)
        self.view.addSubview(imageOfThirdLabel)
                
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(dissmissSelf))
    }
   @objc func dissmissSelf() {
        let rootViewController = ThirdViewController()
//        let thirdViewController = UINavigationController(rootViewController: rootViewController)
//        thirdViewController.modalPresentationStyle = .fullScreen
        present(rootViewController, animated: true, completion: nil)
        
        
    }
}
