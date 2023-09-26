//
//  settingsViewController.swift
//  tallyApp
//
//  Created by Ethan Archibald on 9/25/23.
//

import UIKit

class settingsViewController: UIViewController {

    @IBOutlet weak var whichWaySwitch: UISwitch!
    @IBOutlet weak var intervalInput: UITextField!
    @IBOutlet weak var startAtInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        whichWaySwitch.isOn = ViewController.isNumberGoingUp
        intervalInput.text =  String(ViewController.interval)
        startAtInput.text = String(ViewController.whereAreWeStarting)
        // Do any additional setup after loading the view.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        ViewController.isNumberGoingUp = whichWaySwitch.isOn
        
        guard let changedInterval = Int(intervalInput.text!) else { return intervalInput.text = "Error" }
        
        ViewController.interval = changedInterval
        
        guard let resetNumber = Int(startAtInput.text!) else { return }
        
        ViewController.whereAreWeStarting = resetNumber
    }
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
