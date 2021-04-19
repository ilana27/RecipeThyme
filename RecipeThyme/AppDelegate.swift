//
//  AppDelegate.swift
//  RecipeThyme
//
//  Created by Ilana Nguyen on 3/25/21.
//

import UIKit
import Firebase
import GoogleSignIn

//@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions:
        [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    //GIDSignIn.sharedInstance()?.clientID = "853718857549-8j422poopt450727hmkh9v2iu8fkmqk9.apps.googleusercontent.com"
    FirebaseApp.configure()
    return true
  }

//    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
//        let sourceApplication = options[.sourceApplication] as? String
//        let annotation = options[.annotation]
//
//        return GIDSignIn.sharedInstance()?.handle(url, sourceApplication: sourceApplication, annotation: annotation) ?? false
//    }
  
}
