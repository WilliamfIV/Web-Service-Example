//
//  ViewController.swift
//  Web Service Example
//
//  Created by William H Fulton IV on 7/3/17.
//  Copyright © 2017 IVdev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var forcastLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        
        //Intstantiated 'AFTTPSessionManager' to make http requests in this code
        //If the get request is successful then the 'success' closure with be executed
    
    let manager = AFHTTPSessionManager()
    
    manager.get("http://api.openweathermap.org/data/2.5/forecast/daily?q=London&mode=json&units=metric&cnt=1&appid=1cfc3768d72b5eba2ed50a80f10ea48a",
        parameters: nil,
        progress: nil,
        success: {  (operation: URLSessionDataTask, responseObject: Any?) in
            if let responseObject = responseObject {
                print("Response: " + (responseObject as AnyObject).description)
            }
    })  { (operation: URLSessionDataTask?, error: Error) in
        print("Error: " + error.localizedDescription)
    }
}

    
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

