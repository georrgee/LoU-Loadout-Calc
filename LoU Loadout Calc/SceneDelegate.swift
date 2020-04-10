//  SceneDelegate.swift
//  LoU Loadout Calc
//  Created by George Garcia on 4/6/20.
//  Copyright © 2020 GeeTeam. All rights reserved.

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window              = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        
        window?.rootViewController = MainTC()
        window?.makeKeyAndVisible()
    }
    
    
    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }
    
//    func createTabbar() -> UITabBarController {
//        let tabbar                            = MainTC()
//        tabbar.tabBar.tintColor               = #colorLiteral(red: 0.9225583076, green: 0.9140970111, blue: 0.8658707738, alpha: 1)
//        tabbar.tabBar.unselectedItemTintColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
//        UITabBar.setupCustomTabbar()
//        tabbar.viewControllers                = [createLoadoutNC(), createMyLoadoutNC(), createItemsInfoNC(), createMusicNC(), createAboutNC()]
//        return tabbar
//    }
//
//    func createLoadoutNC() -> UINavigationController {
//        let loadoutCalcVC        = LoadoutCalcVC()
//        loadoutCalcVC.title      = "Loadout Calculator"
//        loadoutCalcVC.tabBarItem = UITabBarItem(title: "Calculator", image: LastOfUsImages.TabBarIcon.calculator, tag: 0)
//        return UINavigationController(rootViewController: loadoutCalcVC)
//    }
//
//    func createMyLoadoutNC() -> UINavigationController {
//        let myLoadoutVC        = MyLoadoutVC()
//        myLoadoutVC.title      = "My Loadouts"
//        myLoadoutVC.tabBarItem = UITabBarItem(title: "My Loadouts", image: LastOfUsImages.TabBarIcon.list, tag: 1)
//        return UINavigationController(rootViewController: myLoadoutVC)
//    }
//
//    func createItemsInfoNC() -> UINavigationController {
//        let itemsInfoVC        = ItemsInfoVC()
//        itemsInfoVC.title      = "Inventory"
//        itemsInfoVC.tabBarItem = UITabBarItem(title: "Items", image: LastOfUsImages.TabBarIcon.info, tag: 2)
//        return UINavigationController(rootViewController: itemsInfoVC)
//    }
//
//    func createMusicNC() -> UINavigationController {
//        let musicVC        = MusicVC()
//        musicVC.title      = "Music"
//        musicVC.tabBarItem = UITabBarItem(title: "Music", image: LastOfUsImages.TabBarIcon.music, tag: 3)
//        return UINavigationController(rootViewController: musicVC)
//    }
//
//    func createAboutNC() -> UINavigationController {
//        let aboutVC        = AboutVC()
//        aboutVC.title      = "About"
//        aboutVC.tabBarItem = UITabBarItem(title: "About", image: LastOfUsImages.TabBarIcon.about, tag: 4)
//        return UINavigationController(rootViewController: aboutVC)
//    }
}


