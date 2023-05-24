//
//  ViewController.swift
//  IOS_Asm1_API
//
//  Created by Yuen Shan Tsang on 23/5/2023.
//

import UIKit

class ViewController: UIViewController {
    
    // Function to print Game of Thrones data
    @IBAction func printGOTData() {
        Task {
            print(await GOTAPI_Helper.fetch(quote: "random"))
        }
    }
    
    // Function to print Disney data
    @IBAction func printDisneyData() {
        Task {
            print(await DisneyAPI_Helper.fetch(characterID: nil))
        }
    }
    
    // Function to print Random Facts data
    @IBAction func printFactsData() {
        Task {
            print(await FactsAPI_Helper.fetch(facts: "random"))
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
     
    }
    
}

