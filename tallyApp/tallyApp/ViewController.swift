//
//  ViewController.swift
//  tallyApp
//
//  Created by Ethan Archibald on 9/25/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainNumberLabel: UILabel!
    
    static var counter = 0
    static var interval = 1
    static var isNumberGoingUp = true
    static var whereAreWeStarting = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func counterButton(_ sender: Any) {
        if ViewController.isNumberGoingUp == true {
            ViewController.counter += ViewController.interval
            mainNumberLabel.text = String(ViewController.counter)
        }
        if ViewController.isNumberGoingUp == false {
            ViewController.counter -= ViewController.interval
            mainNumberLabel.text = String(ViewController.counter)
        }
    }
    
    
    @IBAction func resetButton(_ sender: Any) {
        ViewController.counter = ViewController.whereAreWeStarting
        mainNumberLabel.text = String(ViewController.counter)
        
    }
    


}

