//
//  GRStatusBarStyle.swift
//  GRStatusBar
//
//  Created by Guilherme Rambo on 28/01/16.
//  Copyright © 2016 Guilherme Rambo. All rights reserved.
//

import Cocoa

/// GRStatusBarStyle
/// * Light - For light windows
/// * Dark - For dark windows
public enum GRStatusBarStyle: String {
    case Light
    case Dark
    
    /// Gets the most appropriate style based on the appearance provided
    ///
    /// You can use this to automatically match a window's appearance
    init(appearance: NSAppearance?) {
        guard let appearance = appearance else {
            self.init(rawValue: "Light")!
            return
        }
        
        switch appearance.name {
        case NSAppearanceNameVibrantDark:
            self.init(rawValue: "Dark")!
        default:
            self.init(rawValue: "Light")!
        }
    }
    
    var appearance: NSAppearance {
        switch self {
        case .Light:
            return NSAppearance(named: NSAppearanceNameVibrantLight)!
        case .Dark:
            return NSAppearance(named: NSAppearanceNameVibrantDark)!
        }
    }
}