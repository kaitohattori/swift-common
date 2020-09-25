//
//  ImageBase64String.swift
//  swift-common
//
//  Created by Kaito Hattori on 2020/09/25.
//

///
/// ```
/// let base64String = ImageBase64String(rawValue: "XXXXXXXXXXXX")
/// let convertedImage = base64String.image()
/// ```
///

import UIKit

struct ImageBase64String: Codable, RawRepresentable, Hashable {
    let rawValue: String
    
    func image() -> UIImage? {
        guard let dataDecoded: Data = Data(base64Encoded: self.rawValue, options: .ignoreUnknownCharacters) else {
            return nil
        }
        let decodedimage = UIImage(data: dataDecoded)
        return decodedimage
    }
}

let base64String = ImageBase64String(rawValue: "sdf.......")
let convertedImage = base64String.image()
