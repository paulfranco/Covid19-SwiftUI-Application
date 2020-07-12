//
//  Extension.swift
//  Covid19
//
//  Created by Paul Franco on 7/10/20.
//

import Foundation
extension Int64 {
    
    func formatNumber() -> String {
        let formater = NumberFormatter()
        formater.groupingSeparator = ","
        formater.numberStyle = .decimal
        return formater.string(from: NSNumber(value: self))!
    }

}

extension Int {
    
    func formatNumber() -> String {
        let formater = NumberFormatter()
        formater.groupingSeparator = ","
        formater.numberStyle = .decimal
        return formater.string(from: NSNumber(value: self))!
    }

}
