//
//  CarsViewController.swift
//  Vamsi11901378project
//
//  Created by Student on 02/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class CarsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


    @IBOutlet weak var N_O_C: UITextField!
    
    @IBOutlet weak var ed: UILabel!
    @IBOutlet weak var sd: UILabel!
    @IBOutlet weak var SD: UITextField!
    @IBOutlet weak var ED: UITextField!
    @IBOutlet weak var amount: UILabel!
    @IBOutlet weak var l1: UILabel!

    @IBAction func Switch(_ sender: UISwitch) {
        if(sender.isOn==false){
            let okhandler1={(action: UIAlertAction)->Void in self}
            let alert1=UIAlertController(title:"Warning!", message: "You Need Driver's Lisense",preferredStyle: .alert)
            alert1.addAction(UIAlertAction(title: "OK", style: .default, handler: okhandler1))
            self.present(alert1, animated: true, completion: nil)
        }
    }
    @IBOutlet weak var N_O_D: UITextField!
    @IBAction func generate(_ sender: Any) {
        let a=Int(N_O_C.text!)
        let b=Int(N_O_D.text!)
        let strt=SD.text!
        let end=ED.text!
        let c=a!*b!*500
        l1.text="No.of days=\(b!)"
        amount.text="Total Amount=\(c)"
        sd.text="Start Date=\(strt)"
        ed.text="End Date=\(end)"
    }
    @IBAction func Book(_ sender: Any) {
        if(N_O_C.text=="" || N_O_D.text=="" || SD.text=="" || ED.text==""){
            let okhandler1={(action: UIAlertAction)->Void in self}
            let alert1=UIAlertController(title:"Warning!", message: "Required Fields are Missing",preferredStyle: .alert)
            alert1.addAction(UIAlertAction(title: "OK", style: .default, handler: okhandler1))
            self.present(alert1, animated: true, completion: nil)
            
        }
        else{
        let okhandler2={(action: UIAlertAction)->Void in self}
        let alert1=UIAlertController(title:"Booking Successful!", message: "Your Booking is successful. Thank you for Choosing Us",preferredStyle: .alert)
        alert1.addAction(UIAlertAction(title: "OK", style: .default, handler: okhandler2))
        self.present(alert1, animated: true, completion: nil)
        }
            
    }
}
