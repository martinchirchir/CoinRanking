//
//  String+.swift
//  CoinRanking
//
//  Created by Martin Chirchir on 03/03/2025.
//

import SwiftUI

extension String {
    
    var asUIColor: Color? {
        let hexValue = self.hasPrefix("#") ? String(self.dropFirst()) : self
    
        guard hexValue.count == 6 else {
            return nil
        }

        let redHex = hexValue.prefix(2)
        let greenHex = hexValue.dropFirst(2).prefix(2)
        let blueHex = hexValue.dropFirst(4).prefix(2)
        

        let red = CGFloat(Int(redHex, radix: 16) ?? 0) / 255.0
        let green = CGFloat(Int(greenHex, radix: 16) ?? 0) / 255.0
        let blue = CGFloat(Int(blueHex, radix: 16) ?? 0) / 255.0
        
        return Color(red: red, green: green, blue: blue)
    }
}
