//
//  Cache.swift
//  swift-common
//
//  Created by Kaito Hattori on 2020/09/25.
//

///
/// ```
/// // save data
/// Cache.shared.setObject(user as AnyObject, forKey: "something key" as AnyObject)
///
/// // load data
/// if let data = Cache.shared.object(forKey: "something key" as AnyObject), let cachedUser = data as? User {
///      print(cachedUser)
/// }
/// ```
///

import Foundation

final public class Cache: NSCache<AnyObject, AnyObject> {
    static let shared = Cache()
    private override init() { }
}

public enum CachePolicy {
    case useCache
    case useCacheAndReload
    case ignore
}
