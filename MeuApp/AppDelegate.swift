//
//  AppDelegate.swift
//  MeuApp
//
//  Created by guilherme.machado on 20/01/18.
//  Copyright © 2018 Guilherme Machado. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let plistInfo = Bundle.main.infoDictionary?["EnviromentConfig"]
        let enviromentConfig = plistInfo as? [String:AnyObject]
        if let apiURL = enviromentConfig?["API_URL"] as? String {
            print(apiURL)
        }

        return true
        
    }
}
