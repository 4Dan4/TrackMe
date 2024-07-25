//
//  AppDelegate.swift
//  TrackMe
//
//  Created by Daniil Pinigin on 25.07.2024.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        window?.rootViewController = StartScreen()
        window?.makeKeyAndVisible()
        
        return true
    }

}

