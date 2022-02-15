//
//  ViewController.swift
//  Assignment32
//
//  Created by Ziming Gong on 2/14/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    let images = ["burger","freds","hotdog","icecream","lobster","pizza","roastchicken","salad","shrimp","steak"]
    let foodNames = ["Burger","Freds","Hot Dog","Ice Cream","Lobster","Pizza","Roast Chicken","Salad","Shrimp","Steak"]

    @IBOutlet weak var tblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)?.first as! TableViewCell
        
        cell.imgView.image = UIImage(named: images[indexPath.row])
        cell.lblImage.text = foodNames[indexPath.row]
        return cell
    }


}

