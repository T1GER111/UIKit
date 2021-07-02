//
//  FourthViewController.swift
//  Lesson 8
//
//  Created by T1GER on 30.06.2021.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet weak var labelText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func share(sender: AnyObject) {
        let link = NSURL(string: "https://blogSuetologa.ru")
        let vc = UIActivityViewController(activityItems: [labelText.text!, "https://blogSuetologa.ru", link!], applicationActivities: nil)
        self.present(vc, animated: true, completion: nil)
    }
}
