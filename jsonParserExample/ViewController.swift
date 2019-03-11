//
//  ViewController.swift
//  jsonParserExample
//
//  Created by Vishnu u on 08/03/19.
//  Copyright © 2019 Vishnu u. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let path = Bundle.main.path(forResource: "jsonparse", ofType: "json")
        let url = URL(fileURLWithPath: path!)
        do {
            let data = try Data(contentsOf: url)
            let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
            guard let basicDictionary = json as? Dictionary<String, Any>
                else{
                    return
                    
            }
            guard let basicsecondDictionary = basicDictionary["quiz"] as? Dictionary<String, Any>
                else{
                    return
                    
            }
            print(basicsecondDictionary)
            
//            for user in array {
//                guard let userDict = user as? [String:Any] else{return}
//                print(userDict)
//            }
        }
        catch{
            print(error)
        }
    }


}

