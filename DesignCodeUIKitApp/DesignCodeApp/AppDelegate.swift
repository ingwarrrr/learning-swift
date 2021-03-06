//
//  AppDelegate.swift
//  DesignCodeApp
//
//  Created by Igor on 
//

import UIKit
import Ambience

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        let ambience = Ambience.shared

        ambience.insert([
            .invert(upper: 0.2),
            .regular(lower: 0.1, upper: 1.0),
            .contrast(lower: nil),
        ])

        RealmManager.updateContent()

        return true
    }
}
