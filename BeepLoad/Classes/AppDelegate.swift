//
//  AppDelegate.swift
//  BeepLoad
//
//  Created by --=_t0tep_=-- on 23/07/2016.
//  Copyright © 2016 --=_t0tep_=--. All rights reserved.
//

import UIKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        UIApplication.shared().statusBarStyle = .lightContent
        UINavigationBar.appearance().barTintColor = UIColor(hex: 0x4ab3e8)
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName: UIColor(hex: 0xffffff)]
        UINavigationBar.appearance().tintColor = UIColor.white()
        
        UITabBar.appearance().barTintColor = UIColor(hex: 0x4ab3e8)
        UITabBar.appearance().tintColor = UIColor.white()
        
        
        return true
    }
    
    
    
    class func sharedDelegate() -> AppDelegate {
        return UIApplication.shared().delegate as! AppDelegate
    }
    
    
    // MARK: - Actions
    
    func openHomeViewController() {
        openControllerWithIndentifier("homeTableViewController")
    }
    
    func openSendBill() {
        openControllerWithIndentifier("sendBillController")
    }
    
    func openPayBill() {
        openControllerWithIndentifier("payTableBillController")
    }
    
    func openCheckBalance() {
        openControllerWithIndentifier("checkBalanceController")
    }
    
    func openTransactionHistory() {
        openControllerWithIndentifier("transactionHistoryController")
    }
    
    func backToLogin() {
        openControllerWithIndentifier("loginViewController")
    }
    
    // MARK: - Private Methods
    private func openControllerWithIndentifier(_ identifier: String) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: identifier)
        let rootController = window?.rootViewController as! MSSlidingPanelController
        
        
        rootController.centerViewController = controller
        rootController.closePanel()
    }
    
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    
}

