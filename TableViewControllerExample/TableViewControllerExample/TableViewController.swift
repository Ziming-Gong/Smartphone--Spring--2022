//
//  TableViewController.swift
//  TableViewControllerExample
//
//  Created by Ziming Gong on 1/28/22.
//

import UIKit

class TableViewController: UITableViewController {
    
    let arr = ["Mark","Bill","Lucy","David"]
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSetion section: Int) -> Int{
        return arr.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        // #warning Incomplete implementation, return the number of rows
        cell.textLabel?.text = arr[indexPath.row]
        return cell
    }

    
    


}
