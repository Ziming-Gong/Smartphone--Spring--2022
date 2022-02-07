//
//  ViewController.swift
//  SegueExample
//
//  Created by Ziming Gong on 2/6/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var txtLastName: UIView!
    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var goToSecondVC: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
            }
    
   
    @IBAction func GoToSecond(_ sender: Any) {
        performSegue(withIdentifier: "segueToSecondVC", sender: <#T##Any?#>)

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToSecondVC"{
            let secondVC = segue.destination as! SecondViewController
            
            secondVC.welcomeStr = "Welcome \(txtFirstName), \(txtLastName)"
        }
    }

}

