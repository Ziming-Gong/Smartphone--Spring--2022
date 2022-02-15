//
//  SecondViewController.swift
//  Assignment31
//
//  Created by Ziming Gong on 2/14/22.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var lblWelcome: UILabel!
    var welcomStr = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblWelcome.text = welcomStr

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goBack(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
    

  

}
