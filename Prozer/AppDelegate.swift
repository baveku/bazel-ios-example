//
//  AppDelegate.swift
//  Prozer
//
//  Created by Bách VQ on 13/09/2021.
//

import UIKit
import AsyncDisplayKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let node = ASDisplayNode()
        window?.rootViewController = UINavigationController(rootViewController: ASDKViewController(node: node))
        window?.makeKeyAndVisible()
        return true
    }
}
