//
//  ViewController.swift
//  Lesson 3 (2)
//
//  Created by T1GER on 24.06.2021.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    let labelResult = UILabel(frame: CGRect(x: 140, y: 200, width: 100, height: 50))
    let buttonBegin = UIButton()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .gray
        
        
        // Your result
        labelResult.backgroundColor = .black
        labelResult.textColor = .white
        labelResult.textAlignment = .center
        labelResult.text = "Результат"
        
        
        let xPosition:CGFloat = 140
        let yPosition:CGFloat = 300
        let buttonWidth:CGFloat = 100
        let buttonHeight:CGFloat = 50
        
        // кнопка
        buttonBegin.frame = CGRect(x: xPosition, y: yPosition, width: buttonWidth, height: buttonHeight)
        
        buttonBegin.backgroundColor = UIColor.black
        buttonBegin.setTitle("Begin", for: .normal)
        buttonBegin.tintColor = UIColor.white
        
        
        
        
        buttonBegin.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        
        
        self.view.addSubview(buttonBegin)
        self.view.addSubview(labelResult)
    }
    
    @objc func buttonAction() {
        
        let alertText = UIAlertController(title: "Enter word", message: nil, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default)  { (action) in
            self.labelResult.text = "\(Model.model.checkWord(alertText.textFields?.first?.text ?? ""))"
        }
        
        alertText.addAction(action)
        alertText.addTextField(configurationHandler: nil)
        present(alertText, animated: true)
        
    }
}

struct Model {
    public static let model = Model()
    
    func checkWord(_ w: String) -> String {
        if w == "leohl" {
            return "Hello"
        } else {
            return "Uknown"
        }
    }
}

