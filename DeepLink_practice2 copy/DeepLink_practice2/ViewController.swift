//
//  ViewController.swift
//  DeepLink_practice2
//
//  Created by Mayurii Gajbhiye on 27/08/20.
//  Copyright © 2020 Mayurii Gajbhiye. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    
    @IBAction func didGoToSecondApp(){
        
        let application = UIApplication.shared
        let secondAppPath = "second://"
        let appUrl =  URL(string: secondAppPath)!
        
        
        let websiteUrl = URL(string: "https://www.apple.com/in/safari/")!
        
        
        if application.canOpenURL(appUrl)
        {
            application.open(appUrl, options: [:], completionHandler: nil)
        }
        else
        {
            application.open(websiteUrl)
        }
    }
}

