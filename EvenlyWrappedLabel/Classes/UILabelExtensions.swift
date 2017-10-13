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
     */
    func sizeNeeded(for width: CGFloat) -> CGSize {
        let size = CGSize(width: width, height: .greatestFiniteMagnitude)
        let options: NSStringDrawingOptions = .usesLineFragmentOrigin
        
        if let attributedText = attributedText,
            attributedText.string.count > 0 {
            return attributedText.boundingRect(with: size, options: options, context: nil).size
        }
        
        if let text = text,
            text.count > 0 {
            return text.boundingRect(with: size, options: options, attributes: [.font: font], context: nil).size
        }
        
        return .zero
    }
}
