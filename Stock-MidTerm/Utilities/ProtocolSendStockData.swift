//
//  ProtocolSendStockData.swift
//  Stock-MidTerm
//
//  Created by Ziming Gong on 4/10/22.
//

import Foundation


protocol SendStockDelegate{
    func sendStockData(_ stockModel : StockModel)
}
