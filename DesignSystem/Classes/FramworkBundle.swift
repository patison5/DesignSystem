//
//  Test.swift
//  DesignSystem
//
//  Created by Fedor Penin on 11.08.2022.
//

import UIKit

final class FramworkBundle {

    static let shared = FramworkBundle()

    let bundle: Bundle

    private init() {
        let bundleTest = Bundle(for: FramworkBundle.self)
        let path = bundleTest.path(forResource: "Resources", ofType: "bundle")
        self.bundle = Bundle(url: URL(fileURLWithPath: path!))!
    }
}

