//
//  GOTAPI_Helper.swift
//  IOS_Asm1_API
//
//  Created by Yuen Shan Tsang on 23/5/2023.
//

import Foundation

class GOTAPI_Helper {
    private static let urlString = "https://api.gameofthronesquotes.xyz/v1"
    
    // Function to create the URL
    private static func createURL(quote: String) -> URL?{
        var tempURLString = urlString
        if quote != "" {
            tempURLString.append("/")
            tempURLString.append(quote)
        }
        guard
            let url = URL(string: tempURLString)
        else { return nil }
        
        return url
        
    }
    
    public static func fetch(quote: String) async -> Any {
        let quoteURL = createURL(quote: quote)!
        
        // Perform the network request using URLSession and await the response
        let (data, _) = try! await URLSession.shared.data(from: quoteURL)
        
        // Convert the received data into a JSON object
        let jsonObject = try! JSONSerialization.jsonObject(with: data)
        return jsonObject
    }
}
