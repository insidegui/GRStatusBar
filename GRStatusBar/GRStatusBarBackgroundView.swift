//
//  GRStatusBarBackgroundView.swift
//  GRStatusBar
//
//  Created by Guilherme Rambo on 27/01/16.
//  Copyright © 2016 Guilherme Rambo. All rights reserved.
//

import Cocoa

class GRStatusBarBackgroundView: NSView {
    
    var backgroundColor: NSColor? {
        didSet {
            setNeedsDisplayInRect(bounds)
        }
    }
    
    override func drawRect(dirtyRect: NSRect) {
        super.drawRect(dirtyRect)

        guard let backgroundColor = backgroundColor else { return }
        
        NSBezierPath(roundedRect: bounds, xRadius: LayoutConstants.cornerRadius, yRadius: LayoutConstants.cornerRadius).addClip()
        backgroundColor.setFill()
        NSRectFill(dirtyRect)
    }
    
}
