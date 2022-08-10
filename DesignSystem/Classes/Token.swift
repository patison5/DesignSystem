//
//  Token.swift
//  DesignSystem
//
//  Created by Fedor Penin on 11.08.2022.
//

import UIKit

public enum Token: String {
    case red
    case green
    case blue
    case gray
    case light
    case white
    case grayLight

    case backIOSPrimary
    case backPrimary
    case backSecondary
    case backElevated

    case labelPrimary
    case labelTertiary
    case labelSecondary
    case labelDisable

    case supportNavBarBlur
    case supportOverlay
    case supportSeparator
}

@available(iOS 11.0, *)
public extension Token {
    var color: UIColor {
        guard let color = UIColor(named: rawValue, in: FramworkBundle.shared.bundle, compatibleWith: nil) else {
            print("❌ Цвет \(rawValue) не найден. Использую цвет по умолчанию .black")
            return .black
        }
        return color
    }

    /// Динамический цвет CoreGraphics
    var cgColor: CGColor { color.cgColor }
}
