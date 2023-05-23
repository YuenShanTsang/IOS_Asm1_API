//
//  ViewController.swift
//  IOS_Asm1_API
//
//  Created by Yuen Shan Tsang on 23/5/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func printGOTData() {
        Task {
            print(await GOTAPI_Helper.fetch(quote: "random"))
        }
    }
    
    @IBAction func printDisneyData() {
        Task {
            print(await DisneyAPI_Helper.fetch(characterID: nil))
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
     
    }
    
}

