//
//  SecondViewController.swift
//  Lesson 4
//
//  Created by T1GER on 23.06.2021.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var fioTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue .identifier == "toCheck" {
            if let vc = segue.destination as? ThirdViewController {
                vc.fioText = fioTextField.text
            }
        }
    }
}
