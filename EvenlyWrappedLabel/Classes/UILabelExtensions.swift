//
//  UILabelExtensions.swift
//  EvenlyWrappedLabel
//
//  Created by Jeff Burt on 10/10/17.
//  Copyright © 2017 StockX. All rights reserved.
//

import UIKit

extension UILabel {
    /**
     Returns the size needed to display 'attributedText' or 'text' for the
     given width.
     
     Note: we need to know if the intent was to use attributed text sizing
     or normal text sizing that way we use the correct boundingRect method and
     we get the correct sizing.
     */
    func sizeNeeded(for width: CGFloat, isUsingAttributedText: Bool) -> CGSize {
        let resultingSize: CGSize
        
        let size = CGSize(width: width, height: .greatestFiniteMagnitude)
        let options: NSStringDrawingOptions = .usesLineFragmentOrigin
        
        if isUsingAttributedText,
            let attributedText = attributedText,
            attributedText.string.count > 0 {
            resultingSize = attributedText.boundingRect(with: size, options: options, context: nil).size
        }
        else if let text = text,
            text.count > 0 {
            resultingSize = text.boundingRect(with: size, options: options, attributes: [.font: font], context: nil).size
        }
        else {
            resultingSize = .zero
        }
        
        return CGSize(width: ceil(resultingSize.width),
                      height: ceil(resultingSize.height))
    }
}
