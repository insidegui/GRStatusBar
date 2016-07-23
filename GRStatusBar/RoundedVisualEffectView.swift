//
//  RoundedVisualEffectView.swift
//  GRStatusBar
//
//  Created by Guilherme Rambo on 28/01/16.
//  Copyright © 2016 Guilherme Rambo. All rights reserved.
//

import Cocoa

class RoundedVisualEffectView: NSVisualEffectView {
    
    var cornerRadius: CGFloat = 4.0 {
        didSet {
            invalidateCornerImage()
        }
    }
    
    private var cornerImage: NSImage!
    
    private func invalidateCornerImage() {
        cornerImage = NSImage(size: bounds.size)
        cornerImage.lockFocus()
        NSColor.clear().setFill()
        NSRectFill(bounds)
        NSBezierPath(roundedRect: bounds, xRadius: cornerRadius, yRadius: cornerRadius).addClip()
        NSColor.white().setFill()
        NSRectFill(bounds)
        cornerImage.unlockFocus()
        
        maskImage = cornerImage
    }
    
    override func viewDidMoveToSuperview() {
        super.viewDidMoveToSuperview()
        
        invalidateCornerImage()
    }
    
    override func setFrameSize(_ newSize: NSSize) {
        super.setFrameSize(newSize)
        
        invalidateCornerImage()
    }
    
}
