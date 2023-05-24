//
//  FactsAPI_Helper.swift
//  IOS_Asm1_API
//
//  Created by Yuen Shan Tsang on 24/5/2023.
//

import Foundation

class FactsAPI_Helper {
    private static let urlString = "https://uselessfacts.jsph.pl/api/v2/facts"
    
    // Function to create the URL
    private static func createURL(facts: String) -> URL?{
        var tempURLString = urlString
        
        // Append the facts to the URL if it's not empty
        if facts != "" {
            tempURLString.append("/")
            tempURLString.append(facts)
        }
        
        // Create the URL object from the modified URL string
        guard
            let url = URL(string: tempURLString)
        else { return nil }
        
        return url
        
    }
    
    // Function to fetch facts from the API asynchronously
    public static func fetch(facts: String) async -> Any {
        let factsURL = createURL(facts: facts)!
        
        // Perform the network request using URLSession and await the response
        let (data, _) = try! await URLSession.shared.data(from: factsURL)
        
        // Convert the received data into a JSON object
        let jsonObject = try! JSONSerialization.jsonObject(with: data)
        return jsonObject
    }
}
