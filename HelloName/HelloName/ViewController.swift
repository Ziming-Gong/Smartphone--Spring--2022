//
//  ViewController.swift
//  HelloName
//
//  Created by Ziming Gong on 1/27/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var lblGreeting: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func sayFunction(_ sender: Any) {
        guard let firstName = txtFirstName.text,
        !firstName.isEmpty else {
            lblGreeting.text = "Enter First Name"
            return
            }

        guard let lastName = txtLastName.text,
        !lastName.isEmpty else {
            lblGreeting.text = "Enter Last Name"
            return
            }
        lblGreeting.text = "Hello \(firstName) \(lastName)"
    }
    

}

