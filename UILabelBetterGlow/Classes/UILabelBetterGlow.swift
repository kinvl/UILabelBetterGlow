//
//  UILabelBetterGlow.swift
//  UILabelBetterGlow
//
//  Created by Krzysztof Kinal on 23/07/2021.
//

import UIKit

@IBDesignable
public class BetterGlow: UILabel {
    
    /** Size of the label's outer glow.*/
    @IBInspectable public var glowRadius: CGFloat = 0 {
        didSet {
            setNeedsDisplay()
            
        }
        
    }
    
    /** Color  of the label's outer glow.*/
    @IBInspectable public var glowColor: UIColor = UIColor.clear {
        didSet {
            glowCGColor = glowColor.cgColor
            setNeedsDisplay()
            
        }
        
    }
    
    /** Size of the label's inner outer glow.*/
    @IBInspectable public var innerGlowRadius: CGFloat = 0 {
        didSet {
            setNeedsDisplay()
            
        }
        
    }
    
    /** Color of the label's inner glow.*/
    @IBInspectable public var innerGlowColor: UIColor = UIColor.clear {
        didSet {
            innerGlowCGColor = innerGlowColor.cgColor
            setNeedsDisplay()
            
        }
        
    }
    
    
    
    private var glowCGColor: CGColor = UIColor.clear.cgColor
    private var innerGlowCGColor: CGColor = UIColor.clear.cgColor
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
    }
    
    public override func drawText(in rect: CGRect) {
        if text == nil {
            return
            
        } else {
            drawTextWithGlowInRect(rect: rect)
            
        }
        
    }
    
    private func drawTextWithGlowInRect(rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext() {
            UIGraphicsBeginImageContextWithOptions(rect.size, false, 0.0)
            
            super.drawText(in: rect)
            
            if let textImage: UIImage = UIGraphicsGetImageFromCurrentImageContext() {
                UIGraphicsEndImageContext()
                
                context.saveGState()
                
                // Create outer glow
                if glowRadius > 0 {
                    context.setShadow(offset: CGSize.zero, blur: glowRadius)
                    context.setShadow(offset: CGSize.zero, blur: glowRadius, color: glowCGColor)
                    
                }
                
                textImage.draw(at: rect.origin)
                context.restoreGState()
                
                
                // Create inner glow
                if innerGlowRadius > 0 {
                    UIGraphicsBeginImageContextWithOptions(rect.size, false, 0.0)
                    if let innerGlowContext = UIGraphicsGetCurrentContext() {
                        innerGlowContext.saveGState()
                        innerGlowContext.setFillColor(UIColor.black.cgColor)
                        innerGlowContext.fill(rect)
                        innerGlowContext.translateBy(x: 0.0, y: rect.size.height)
                        innerGlowContext.scaleBy(x: 1.0, y: -1.0)
                        innerGlowContext.clip(to: rect, mask: textImage.cgImage!)
                        innerGlowContext.clear(rect)
                        innerGlowContext.restoreGState()
                        
                        if let inverted: UIImage = UIGraphicsGetImageFromCurrentImageContext() {
                            innerGlowContext.clear(rect)
                            innerGlowContext.saveGState()
                            innerGlowContext.setFillColor(innerGlowCGColor)
                            innerGlowContext.setShadow(offset: CGSize.zero, blur: innerGlowRadius, color: innerGlowCGColor)
                            inverted.draw(at: CGPoint.zero)
                            innerGlowContext.translateBy(x: 0.0, y: rect.size.height)
                            innerGlowContext.scaleBy(x: 1.0, y: -1.0)
                            innerGlowContext.clip(to: rect, mask: inverted.cgImage!)
                            innerGlowContext.clear(rect)
                            innerGlowContext.restoreGState()
                            
                            if let innerShadow: UIImage = UIGraphicsGetImageFromCurrentImageContext() {
                                UIGraphicsEndImageContext()
                                innerShadow.draw(at: rect.origin)
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
}
