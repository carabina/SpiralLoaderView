//
//  SpiralView.swift
//  HongsKitchen
//
//  Created by Ravi Tailor on 21/01/19.
//  Copyright © 2019 Ashu Baweja. All rights reserved.
//

import UIKit
import Foundation

class SpiralLoaderView: UIView {
    class func instanceFromNib() -> UIView {
        return UINib(nibName: "SpiralLoaderView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
    }
    
    class func addLoaderToWindow() {
            if let window = (UIApplication.shared.delegate as? AppDelegate)?.window {
                let view = SpiralLoaderView.instanceFromNib()
                view.frame = window.frame
                view.tag = 5000
                window.addSubview(view)
                window.bringSubviewToFront(view)
            }
    }
    
    class func removeLoaderFromWindow () {
            if let window = (UIApplication.shared.delegate as? AppDelegate)?.window,let view = window.viewWithTag(5000) {
                view.removeFromSuperview()
            }
    }
    
    class func addLoaderToView(_ parentView : UIView) {
            let view = SpiralLoaderView.instanceFromNib()
            view.frame = parentView.frame
            view.tag = 5000
            parentView.addSubview(view)
            parentView.bringSubviewToFront(view)
    }
    
    class func removeLoaderFromView (_ parentView: UIView) {
        if let view = parentView.viewWithTag(5000) {
            view.removeFromSuperview()
        }
    }
}
