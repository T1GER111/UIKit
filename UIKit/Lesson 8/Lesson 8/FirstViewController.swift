//
//  ViewController.swift
//  Lesson 8
//
//  Created by T1GER on 29.06.2021.
//
import AVKit
import AVFoundation
import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.contentMode = .scaleAspectFill
        
        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "video", ofType: "mp4")!))
        let vc = AVPlayerViewController()
        vc.player = player
        present(vc, animated: true)
        
        
    }
    
    @IBAction func photoDidChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            imageView.image = UIImage(named: "1")!
        case 1:
            imageView.image = UIImage(named: "2")!
        case 2:
            imageView.image = UIImage(named: "3")!
        case 3:
            imageView.image = UIImage(named: "4")!
        case 4:
            imageView.image = UIImage(named: "5")!
        case 5:
            imageView.image = UIImage(named: "6")!
        case 6:
            imageView.image = UIImage(named: "7")!
        case 7:
            imageView.image = UIImage(named: "8")!
        default:
            break
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        view.backgroundColor = .white
        
    }
}
