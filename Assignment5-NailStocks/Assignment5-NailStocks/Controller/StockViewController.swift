//
//  StockViewController.swift
//  Assignment5-NailStocks
//
//  Created by Ziming Gong on 2/26/22.
//

import UIKit
import SwiftyJSON
import SwiftSpinner
import Alamofire

class StockViewController: UIViewController {

    @IBOutlet weak var lblStockPrice: UILabel!
    @IBOutlet weak var txtStockSysbol: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func getStockPrice(_ sender: Any) {
        
        guard let sysbol = txtStockSysbol.text else{return}
  
        
        let url = "\(shortQueteURL)\(sysbol.uppercased())?limit=1&apikey=\(apiKeys)" //"https://financialmodelingprep.com/api/v3/quote-short/AAPL?apikey=YOUR_API_KEY"
        
        
        SwiftSpinner.show("Getting Growth Rate for \(sysbol)")
        
        AF.request(url).responseJSON { response in
            SwiftSpinner.hide(nil)
            if response.error != nil {
                print(response.error)
                return
            }
            
            let infos = JSON(response.data!).array
            
            guard let stock = infos!.first else {
                return
            }

            let i = Info()
            i.symbol = stock["symbol"].stringValue
            i.growthRate = stock["revenueGrowth"].floatValue

            
            self.lblStockPrice.text = "\(i.symbol) : \(i.growthRate) %"
        }
        
    }
    

}
