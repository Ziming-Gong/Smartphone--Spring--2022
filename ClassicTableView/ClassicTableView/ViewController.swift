//
//  ViewController.swift
//  ClassicTableView
//
//  Created by Ziming Gong on 1/28/22.
//

import UIKit
/*
 1. add a table view to the story board
 2. add a table view cell to the table view
 3. crete indentifies for table view cell and call it cell
 4. create outlet of tableview to the code all the table view as "tblView"
 5. add protocols UIViewController, UITableViewDelegate to the class
 6. add functions for table view numberOfRowsInsection and cellForRowAt
 7. in view did load add tblView.delegate = self and tblView.dataource = self
 8. create an array for data values
 9. return array count in NumemberOfRowsInSection functions
 10. fill the cellForRowAt function
 
 */

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tblView: UITableView!
    
    let arr = ["Mark","Bill","Peter","John","Tom","Mark","Bill"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = arr[indexPath.row]
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.delegate = self
        tblView.dataSource = self
        // Do any additional setup after loading the view.
    }


}

