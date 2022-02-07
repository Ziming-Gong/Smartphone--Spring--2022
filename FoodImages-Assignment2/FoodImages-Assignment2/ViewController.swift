//
//  ViewController.swift
//  FoodImages-Assignment2
//
//  Created by Ziming Gong on 2/7/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tblView: UITableView!
    let images = ["burger","freds","hotdog","icecream","lobster","pizza","roastchicken","salad","shrimp","steak"]
    let foodNames = ["Burger","Freds","Hot Dog","Ice Cream","Lobster","Pizza","Roast Chicken","Salad","Shrimp","Steak"]

    override func viewDidLoad() {
        super.viewDidLoad()

        tblView.delegate = self
        tblView.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.imgViewCell.image = UIImage(named: images[indexPath.row])
        cell.lblCell.text = foodNames[indexPath.row]
        return cell
    }

}

