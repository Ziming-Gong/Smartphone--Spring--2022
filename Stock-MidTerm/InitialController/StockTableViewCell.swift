//
//  StockTableViewCell.swift
//  Stock-MidTerm
//
//  Created by Ziming Gong on 4/10/22.
//

import UIKit

class StockTableViewCell: UITableViewCell {

    @IBOutlet weak var lblSymbol: UILabel!
    @IBOutlet weak var lblCompanyName: UILabel!
    
    var sendStockDelegate : SendStockDelegate?
    
    var companyName = ""
    var symbol = ""
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBAction func getStockPrice(_ sender: Any) {
        
        let currentURL = getStockURL(symbol)
        
        
        
        getStockData(currentURL).done{ stockModel in
            print(stockModel)
//            stockModel.companyName = self.companyName
            stockModel.symbol = self.symbol
            self.sendStockDelegate?.sendStockData(stockModel)
        }
        .catch{ error in
            print(error.localizedDescription)
        }
    }
}
