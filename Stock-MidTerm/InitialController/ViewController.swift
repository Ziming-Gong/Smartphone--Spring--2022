//
//  ViewController.swift
//  Stock-MidTerm
//
//  Created by Ziming Gong on 4/10/22.
//

import UIKit

class ViewController: UIViewController, SendStockDelegate{
        

    @IBOutlet weak var lblCompanyName: UILabel!
    @IBOutlet weak var lblStockPrice: UILabel!
    @IBOutlet weak var lblImage: UIImageView!
    @IBOutlet weak var lblDayHigh: UILabel!
    @IBOutlet weak var lblDayLow: UILabel!
    
    @IBOutlet weak var tblView: UITableView!
    
    var stocksModel : [StockModel]?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        stocksModel = initialStocks()
    }
    
    func initialStocks() -> [StockModel]{
        let facebook = StockModel("Facebook", "FB") //FB
        let apple = StockModel("Apple", "AAPL")//AAPL
        let google = StockModel("Google", "GOOG")//GOOG
        let microsoft = StockModel("Miscrosoft", "MSFT")// MSFT
        let amazon = StockModel("Amazon", "AMZN")//AMZN
        
        var modelArr = [StockModel]()
        
        modelArr.append(facebook)
        modelArr.append(apple)
        modelArr.append(google)
        modelArr.append(microsoft)
        modelArr.append(amazon)

        return modelArr
    }

    func sendStockData(_ stockModel: StockModel) {
        lblStockPrice.text = "\(stockModel.price)"
        lblDayLow.text = "\(stockModel.dayLow)"
        lblDayHigh.text = "\(stockModel.dayHigh)"
        lblCompanyName.text = stockModel.companyName
        lblImage.image = UIImage(named: "\(stockModel.symbol)")
    }


}

