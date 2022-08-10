//
//  Icon.swift
//  DesignSystem
//
//  Created by Fedor Penin on 11.08.2022.
//

import UIKit

public enum Icon: String {
    case iconArrowDown20
    case iconExclaminationPoint20
    case iconPlusCircleFill

    case iconStatusOff
    case iconStatusOn
    case iconStatusHighPriority

    case iconArrowRight
    case iconCalendar

    case iconInfo
    case iconTrash
}

public extension Icon {
    var image: UIImage? {
        return UIImage(named: rawValue, in: FramworkBundle.shared.bundle, compatibleWith: nil)
    }
}
