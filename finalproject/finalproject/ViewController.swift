//
//  ViewController.swift
//  finalproject
//
//  Created by Ziming Gong on 5/3/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtWeight: UITextField!
    
    @IBOutlet weak var txtFeet: UITextField!
    
    @IBOutlet weak var txtInch: UITextField!
    
    @IBOutlet weak var lblBMI: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateBMI(_ sender: Any) {
        let weight = Double(txtWeight.text!)
        let feet = Double(txtFeet.text!)
        let inch = Double(txtInch.text!)
        let bmi = cal(feet: feet!, inch: inch!, weight: weight!)
        if bmi < 18.5 {
            lblBMI.text = String(format: "%.2f", bmi)+", UnderWeight"
        }else if bmi > 18.5 && bmi<24.5 {
            lblBMI.text = String(format: "%.2f", bmi)+", HealthyWeight"
        }else if bmi > 24.5 && bmi < 29.9 {
            lblBMI.text = String(format: "%.2f", bmi)+", Overweight"
        }else{
            lblBMI.text = String(format: "%.2f", bmi)+", Obese"
        }

    }
    
    func cal(feet: Double, inch: Double, weight: Double) -> Double{
        let a = feet*12 + inch
        var result = weight/(a*a)*703
        result = floor(result*10)/10
        return result
    }
    
}

