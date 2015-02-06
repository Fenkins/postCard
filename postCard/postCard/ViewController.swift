//
//  ViewController.swift
//  postCard
//
//  Created by Fenkins on 05/02/15.
//  Copyright (c) 2015 Fenkins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var additionalLabel: UILabel!
    @IBOutlet weak var enterNameTF: UITextField!
    @IBOutlet weak var enterMessageTF: UITextField!
    @IBOutlet weak var messageSent: UIButton!

// our button
    @IBAction func messageButtonPressed(sender: UIButton) {
        
        var simpleName : String
        var simpleText : String
        var boolType : Bool
        simpleName = enterNameTF.text
        simpleText = enterMessageTF.text
        messageLabel.text = "Hi, Taylor! Its " + simpleName + "! I am your best fan and I am writing you cuz " + simpleText
        enterMessageTF.text = ""
        enterNameTF.text = ""
        enterMessageTF.resignFirstResponder()
        enterNameTF.resignFirstResponder()
        
        messageSent.setTitle("Send Another Mail", forState: UIControlState.Normal)
        additionalLabel.text = simpleName
        additionalLabel.backgroundColor = UIColor.darkGrayColor()
        
    }
    // testing the comments yo
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

