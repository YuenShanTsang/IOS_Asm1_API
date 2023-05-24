//
//  DisneyAPI_Helper.swift
//  IOS_Asm1_API
//
//  Created by Yuen Shan Tsang on 23/5/2023.
//

import Foundation

class DisneyAPI_Helper {
    
    // End-point
    private static let urlString = "https://api.disneyapi.dev/character"
    
    // Function to fetch Disney character data from the API asynchronously
    public static func fetch(characterID: Int?) async -> Any{
        let url: URL
        if(characterID == nil){
            // If characterID is nil, fetch all characters
            url = URL(string: urlString)!
        }else{
            // If characterID is provided, fetch specific character using its ID
            let charID_String = String(characterID!)
            url = URL(string: urlString + "/" + charID_String)!
        }
        
        // Perform the network request using URLSession and await the response
        let (data, _) = try! await URLSession.shared.data(from: url)
        
        // Convert the received data into a JSON object
        let jsonObject = try! JSONSerialization.jsonObject(with: data)
        
        return jsonObject
        
        }
}
