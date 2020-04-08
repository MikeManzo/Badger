//
//  NSFont+WidthOfString.swift
//
//  Extends NSFont with a widthOfString() method that returns the width (in points) of a string when displayed in this font.
//
//  Created by Mike Manzo on 3/22/20.
//  Based on original work by Aral Balkan

import AppKit

extension NSFont {
/*    func widthOfString(string:String) -> CGFloat {
        var attributedStringAttributes = NSDictionary(objects: [self, fontDescriptor.fontAttributes[NSFontSizeAttribute]!], forKeys: [NSFontAttributeName, NSFontSizeAttribute])
        let attributedString = NSAttributedString(string: string, attributes: attributedStringAttributes as [NSObject: AnyObject])
        let stringWidth = attributedString.size.width
        
        return stringWidth
    }
*/
    func widthOfString(string:String) -> CGFloat {
        let fontAttributes = self.fontDescriptor.fontAttributes[kCTFontNameAttribute as NSFontDescriptor.AttributeName, default: kCTFontSizeAttribute]
        let attributedString = NSAttributedString(string: string, attributes: fontAttributes as? [NSAttributedString.Key : Any])
        let stringWidth = attributedString.size().width
        
        return stringWidth
    }
}
