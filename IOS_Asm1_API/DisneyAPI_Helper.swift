//
//  DisneyAPI_Helper.swift
//  IOS_Asm1_API
//
//  Created by Yuen Shan Tsang on 23/5/2023.
//

import Foundation

class DisneyAPI_Helper {
    private static let urlString = "https://api.disneyapi.dev/character"
    
    
    public static func fetch(characterID: Int?) async -> Any{
        let url: URL
        if(characterID == nil){
            url = URL(string: urlString)!
        }else{
            let charID_String = String(characterID!)
            url = URL(string: urlString + "/" + charID_String)!
        }
            
        let (data, _) = try! await URLSession.shared.data(from: url)
        
        let jsonObject = try! JSONSerialization.jsonObject(with: data)
        
        return jsonObject
        
        }
}
