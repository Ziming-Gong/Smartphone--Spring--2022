//
//  NetworkFunctions.swift
//  Stock-MidTerm
//
//  Created by Ziming Gong on 4/10/22.
//

import Foundation
import PromiseKit
import Alamofire
import SwiftyJSON


func getStockURL(_ symbol : String) -> String {
    let url = "\(stockURL)\(symbol)?apikey=\(apiKey)"
    return url
}

func getStockData(_ url : String) -> Promise<StockModel>{
    print(url)
    return Promise<StockModel> {seal -> Void in
        AF.request(url).responseJSON {response in
            
            if response.error != nil{
                seal.reject(response.error!)
            }
            
            let stock = StockModel("","")
            
            let stockJSON = JSON(response.data!).arrayValue
            guard let stockQueue = stockJSON.first else {return seal.fulfill(stock)}
            stock.companyName = stockQueue["name"].stringValue
            stock.symbol = stockQueue["symbol"].stringValue
            stock.dayHigh = stockQueue["dayHigh"].doubleValue
            stock.dayLow = stockQueue["dayLow"].doubleValue
            stock.price = stockQueue["price"].doubleValue
            
            seal.fulfill(stock)
        }
    }
}
