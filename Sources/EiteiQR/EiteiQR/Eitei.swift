//
//  Eitei.swift
//  EiteiQR
//
//  Created by damao on 2024/6/17.
//

import UIKit

// 這個類用來做一些關乎全局的事情
class Eitei {
    static let shared = Eitei()
    
    private init() { }
    
    // 封裝從Bundle中讀取圖片
    func loadImage(named name: String) -> UIImage? {
        
        // 获取 CocoaPods 资源 bundle
        guard let bundleURL = Bundle(for: Eitei.self).url(forResource: "Resource", withExtension: "bundle"),
              let bundle = Bundle(url: bundleURL) else {
            // 嘗試 SPM 直接讀取
            if let bundleUrl = Bundle.main.url(forResource: "Resource", withExtension: "bundle") {
                let bundle = Bundle(url: bundleUrl)
                if let resourceUrl = bundle?.url(forResource: name, withExtension: "png") {
                    if let image = UIImage(contentsOfFile: resourceUrl.path) {
                        // 在這裡使用 SPM 導入的 image
                        return image
                    }
                }
            }
            print("讀取bundle失敗")
            return nil
        }
        // 通过 CocoaPods 封裝的 bundle 载入图片
        guard let image = UIImage(named: name, in: bundle, compatibleWith: nil) else {
            print("從 \(bundle)讀取圖片 \(name)失敗")
        }
        return image
    }
    
    
}
