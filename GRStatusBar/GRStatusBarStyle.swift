//
//  GRStatusBarStyle.swift
//  GRStatusBar
//
//  Created by Guilherme Rambo on 28/01/16.
//  Copyright © 2016 Guilherme Rambo. All rights reserved.
//

import Cocoa

/// Defines the style of vibrancy to be used by a `GRStatusBar`
public enum GRStatusBarStyle: String {
    /// Uses the vibrant light appearance and material
    case light
    /// Uses the vibrant dark appearance and material
    case dark
    
    /// Gets the most appropriate style based on the appearance provided
    ///
    /// You can use this to automatically match a window's appearance
    init(appearance: NSAppearance?) {
        guard let appearance = appearance else {
            self.init(rawValue: "light")!
            return
        }
        
        switch appearance.name {
        case NSAppearanceNameVibrantDark:
            self.init(rawValue: "dark")!
        default:
            self.init(rawValue: "light")!
        }
    }
    
    var appearance: NSAppearance {
        switch self {
        case .light:
            return NSAppearance(named: NSAppearanceNameVibrantLight)!
        case .dark:
            return NSAppearance(named: NSAppearanceNameVibrantDark)!
        }
    }
}
