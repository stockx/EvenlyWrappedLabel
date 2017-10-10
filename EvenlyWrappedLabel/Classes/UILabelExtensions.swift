//
//  UILabelExtensions.swift
//  EvenlyWrappedLabel
//
//  Created by Jeff Burt on 10/10/17.
//  Copyright © 2017 StockX. All rights reserved.
//

import UIKit

extension UILabel {
    /** Returns the size needed to display 'text' for the given width. */
    func sizeNeeded(for width: CGFloat) -> CGSize {
        guard let text = text,
            text != "" else {
                return .zero
        }
        
        return text.boundingRect(with: CGSize(width: width, height: .greatestFiniteMagnitude),
                                 options: .usesLineFragmentOrigin,
                                 attributes: [.font: font],
                                 context: nil).size
    }
}
