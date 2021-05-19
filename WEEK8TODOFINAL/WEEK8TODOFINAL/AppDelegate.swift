//
//  AppDelegate.swift
//  WEEK8TODOFINAL
//
//  Created by Decagon on 18/05/2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

func application(_ application: UIApplication,
                 didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        if let todo = fetchData() {
            todoList = todo
        } else {
            todoList = [String]()
        }
        return true
    }

    // MARK: UISceneSession Lifecycle

func application(_ application: UIApplication,
                 configurationForConnecting connectingSceneSession: UISceneSession,
                 options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    }

}
