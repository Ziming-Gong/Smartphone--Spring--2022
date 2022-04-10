//
//  TableViewCode.swift
//  Stock-MidTerm
//
//  Created by Ziming Gong on 4/10/22.
//

import Foundation
import UIKit

extension ViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let rows = stocksModel?.count else {return 0}
        return rows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("StockTableViewCell", owner: self, options: nil)?.first as! StockTableViewCell
        
        guard let stockModel = stocksModel?[indexPath.row] else {return cell}
        
//        if indexPath.row == 0 {
//            ce
//        }
        cell.lblCompanyName.text = stockModel.companyName
        cell.lblSymbol.text = stockModel.symbol
        cell.symbol = stockModel.symbol
//        cell.lblCompanyName = stockModel.companyName
//        cell.lblSymbol = stockModel.symbol
        
        cell.sendStockDelegate = self
        
        return cell
        
        
    }
    
    
    
    
    
    
    
}
