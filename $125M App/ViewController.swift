//
//  ViewController.swift
//  $125M App
//
//  Created by William Farley on 2/2/17.
//  Copyright © 2017 William Farley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var enterMiles: UITextField!
    @IBOutlet weak var convertButton: UIButton!
    @IBOutlet weak var conversionLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func convertToKM(_ sender: UIButton) {
        
        if let miles = Double(enterMiles.text!) {
            let km = miles * 1.6
            conversionLabel.text = "\(miles) miles = \(km) kilometers"
        } else {
            conversionLabel.text = ""
            
            let alertController = UIAlertController(title: "Entry Error", message: "Please enter a valid number. Not an empty string. No commas, symbols, or non-numeric characters.", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(defaultAction)
            present(alertController, animated: true, completion: nil)
            
        }
        
    }

}

