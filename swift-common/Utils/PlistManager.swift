//
//  PlistManager.swift
//  swift-common
//
//  Created by Kaito Hattori on 2020/09/25.
//

///
/// ```
/// let dict = PlistManager("Config").getValue(key: "User") as! Dictionary<String, Any>
/// print(dict["AGE"] as! CGFloat) // 18
/// ```
///

import Foundation

public struct PlistManager {
    
    private var filePath: String?
    
    init(_ plistFileName: String) {
        self.filePath = Bundle.main.path(forResource: plistFileName, ofType: "plist")
    }

    func getKeys() -> Dictionary<String, Any>? {
        guard let filePath = self.filePath else {
            return nil
        }
        return NSDictionary(contentsOfFile: filePath) as? Dictionary<String, Any>
    }

    func getValue(key: String) -> Any? {
        guard let keys = self.getKeys() else {
            return nil
        }
        return keys[key] as Any
    }
}

