//
//  BaseNavigationBar.swift
//  fame
//
//  Created by Jeff Cohen on 3/26/17.
//  Copyright © 2017 Fame. All rights reserved.
//

import UIKit

class TransparentNavigationBar: UINavigationBar {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setBackgroundImage(UIImage(), for: .default)
        self.shadowImage = UIView.border().uiImage
        self.isTranslucent = true
        self.tintColor = Color.golden.uiColor
        self.backgroundColor = Color.purple.uiColor
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func sizeThatFits(_ size: CGSize) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: 35)
    }

}
