//
//  ViewController.swift
//  Assignment31
//
//  Created by Ziming Gong on 2/14/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var txtFirstName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func goToSecondVC(_ sender: Any) {
        
        performSegue(withIdentifier: "segueToSecondVC", sender: self)
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "segueToSecondVC"{
            
            let secondVC = segue.destination as! SecondViewController
         
            secondVC.welcomStr = "Hello \(txtFirstName.text!), \(txtLastName.text!)"
        }
        
    }

}

