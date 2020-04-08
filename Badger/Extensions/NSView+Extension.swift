//
//  NSView+ChangeAnchorPointWithoutMakingTheLayerJump.swift
//
//  Setting .anchorPoint on a layer makes the layer jump which is most
//  likely not what you want. This extension fixes that. Useful for Core Animation.
//
//  Usage: (e.g., to set the anchor point to the centre)
//  myView.setAnchorPoint(CGPointMake(0.5, 0.5))
//
//  Created by Mike Manzo on 3/22/20
//
//  Based on original work by Aral Balkan
//

import AppKit

//
// Converted to Swift + NSView from:
// http://stackoverflow.com/a/10700737
//
extension NSView {
    func setAnchorPoint (anchorPoint:CGPoint) {
        if let layer = self.layer {
            var newPoint = CGPoint(x: self.bounds.size.width * anchorPoint.x, y: self.bounds.size.height * anchorPoint.y)
            var oldPoint = CGPoint(x: self.bounds.size.width * layer.anchorPoint.x, y: self.bounds.size.height * layer.anchorPoint.y)
            
            newPoint = newPoint.applying(layer.affineTransform())
            oldPoint = oldPoint.applying(layer.affineTransform())
            
            var position = layer.position
            
            position.x -= oldPoint.x
            position.x += newPoint.x
            
            position.y -= oldPoint.y
            position.y += newPoint.y
            
            layer.position = position
            layer.anchorPoint = anchorPoint
        }
    }
}
