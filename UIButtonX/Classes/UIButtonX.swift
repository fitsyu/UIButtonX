//
//  UIRadioButtonX.swift
//  UIButtonX
//
//  Created by Fitsyu  on 13/06/19.
//

import UIKit

public class UIButtonX: UIButton {
    
    public var xIcon: UIImage? = UIImage(podAssetName: "close")
    
    public var dismissButton: UIButton {
        
        // setup the frame
        let h = self.bounds.height
        let w = h // same as h as it required to be full circle
        let x = self.bounds.width - w // [ ____|_ ]
        let y = self.bounds.origin.y
        let aFrame = CGRect(x: x, y: y, width: w, height: h)
        
        // make it
        let button = UIButton(frame: aFrame)
        
        // appearance
        let closeImage = xIcon
        button.setImage(closeImage, for: .normal)
        
        button.layer.cornerRadius = button.frame.width * 0.5
        button.layer.borderColor = self.tintColor.cgColor
        button.layer.borderWidth = 1
        
        // hook to the magic of this unit
        button.addTarget(self, action: #selector(selfDestruct), for: .touchUpInside)
        
        // done
        return button
    }
    
    @objc func selfDestruct() {
        
        sendActions(for: .dismissed)
        
        if #available(iOS 10.0, *) {
            
            let disappearing = UIViewPropertyAnimator(duration: 0.5,
                                                      dampingRatio: 0.5,
                                                      animations: {
                                                        self.alpha = 0
            })
            
            
            disappearing.addCompletion { _ in
                self.removeFromSuperview()
            }
            
            disappearing.startAnimation()
            
        } else {
            self.removeFromSuperview()
        }
    }
    
    public override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        setTitleColor(tintColor, for: .normal)
        
        // appearance
        layer.cornerRadius = frame.size.height * 0.5
        layer.borderColor = tintColor.cgColor
        layer.borderWidth = 1
        layer.masksToBounds = true
        
        // make the title left aligned
        contentHorizontalAlignment = .left
        titleEdgeInsets.left = 10
        addSubview(dismissButton)
    }
    
    public override var intrinsicContentSize: CGSize {
        
        let wideningSpell = CGAffineTransform(scaleX: 1.6, y: 1)
        let added30 = super.intrinsicContentSize.applying(wideningSpell)
        return added30
    }
}


public extension UIControl.Event {
    
    static var dismissed: UIControl.Event = UIControl.Event(rawValue: 0b0010 << 24)
}

extension UIImage {
    
    convenience init?(podAssetName: String) {
        let podBundle = Bundle(for: UIButtonX.self)
        
        guard
            let url = podBundle.url(forResource: "UIButtonX", withExtension: "bundle")
            else {
                return nil
        }
        
        self.init(named: podAssetName, in: Bundle(url: url), compatibleWith: nil)
    }
}
