//
//  ViewController.swift
//  Vamsi11901378project
//
//  Created by Student on 19/10/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var pasword: UITextField!
    @IBAction func Signin(_ sender: Any) {
        if(username.text=="" || pasword.text==""){
            let okhandler1={(action: UIAlertAction)->Void in self}
            let alert1=UIAlertController(title:"Warning!", message: "All fields are Mandatory",preferredStyle: .alert)
            alert1.addAction(UIAlertAction(title: "OK", style: .default, handler: okhandler1))
            self.present(alert1, animated: true, completion: nil)
        }
        else{
        if(username.text=="vamsi" && pasword.text=="12345"){
        performSegue(withIdentifier: "uname", sender: self)
    }
        else{
            let okHandler1={(action: UIAlertAction)->Void in self
                
            }
            let alert=UIAlertController(title: "WARNING", message: "No User Found!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: okHandler1))
            alert.addAction(UIAlertAction(title: "CANCEL", style: .default, handler: okHandler1))
            self.present(alert, animated: true, completion: nil)
        }
        }
}

}
