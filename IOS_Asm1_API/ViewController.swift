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
            print(await GOTAPI_Helper.fetch(character: "random"))
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
}

