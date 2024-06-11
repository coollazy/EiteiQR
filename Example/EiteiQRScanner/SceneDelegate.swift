//
//  SceneDelegate.swift
//  EiteiQRScanner
//
//  Created by damao on 2024/6/6.
//

import UIKit
import EiteiQR

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)

        let qrViewController = EiteiQR.ViewController() // Replace with the actual class name
        window?.rootViewController = qrViewController

        window?.makeKeyAndVisible()
    }

}

