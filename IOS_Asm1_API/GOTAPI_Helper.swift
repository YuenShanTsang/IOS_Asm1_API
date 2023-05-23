//
//  GOTAPI_Helper.swift
//  IOS_Asm1_API
//
//  Created by Yuen Shan Tsang on 23/5/2023.
//

import Foundation

class GOTAPI_Helper {
    private static let urlString = "https://api.gameofthronesquotes.xyz/v1"
    
    private static func createURL(character: String) -> URL?{
        var tempURLString = urlString
        if character != "" {
            tempURLString.append("/")
            tempURLString.append(character)
        }
        guard
            let url = URL(string: tempURLString)
        else { return nil }
        
        return url
        
    }
    
    public static func fetch(character: String) async -> Any {
            let characterURL = createURL(character: character)!
            let (data, _) = try! await URLSession.shared.data(from: characterURL)
            
            let jsonObject = try! JSONSerialization.jsonObject(with: data)
            return jsonObject
        }
}
