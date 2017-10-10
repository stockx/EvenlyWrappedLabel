//
//  ViewController.swift
//  EvenlyWrappedLabel
//
//  Created by Jeff Burt on 10/10/2017.
//  Copyright (c) 2017 StockX. All rights reserved.
//

import UIKit
import EvenlyWrappedLabel

class ViewController: UIViewController {
    @IBOutlet private weak var label: EvenlyWrappedLabel!
    @IBOutlet private weak var numberOfLinesTextField: UITextField!
    
    @IBOutlet private weak var overrideHeightSwitch: UISwitch!
    @IBOutlet private weak var heightTextField: UITextField!
    
    @IBOutlet private weak var overrideWidthSwitch: UISwitch!
    @IBOutlet private weak var widthTextField: UITextField!
    
    @IBOutlet private weak var useEveryLineSwitch: UISwitch!
    @IBOutlet private weak var textAlignmentSegmentedControl: UISegmentedControl!
    @IBOutlet private weak var textView: UITextView!

    @IBOutlet private weak var labelHeightConstraint: NSLayoutConstraint!
    @IBOutlet private weak var labelWidthConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numberOfLinesTextField.text = "\(label.numberOfLines)"
        
        heightTextField.text = "\(labelHeightConstraint.constant)"
        widthTextField.text = "\(labelWidthConstraint.constant)"
        
        textAlignmentSegmentedControl.selectedSegmentIndex = TextAlignment(labelTextAlignment: label.textAlignment).rawValue
        textView.text = label.text
    }
}

private extension ViewController {
    enum TextAlignment: Int {
        case left, center, right
        
        var labelTextAlignment: NSTextAlignment {
            switch self {
            case .left: return .left
            case .center: return .center
            case .right: return .right
            }
        }
        
        init(labelTextAlignment: NSTextAlignment) {
            switch labelTextAlignment {
            case  .left, .natural, .justified: self = .left
            case .right: self = .right
            case .center: self = .center
            }
        }
    }
    
    @IBAction func didChangeTextAlignment(_ segmentedControl: UISegmentedControl) {
        label.textAlignment = (TextAlignment(rawValue: segmentedControl.selectedSegmentIndex) ?? .left).labelTextAlignment
    }
    
    @IBAction func didTapSwitch(_ uiSwitch: UISwitch) {
        let isOn = uiSwitch.isOn
        
        switch uiSwitch {
        case overrideHeightSwitch:
            labelHeightConstraint.priority = isOn ? .defaultHigh : .defaultLow
            heightTextField.isEnabled = isOn
        case overrideWidthSwitch:
            labelWidthConstraint.priority = isOn ? .defaultHigh : .defaultLow
            widthTextField.isEnabled = isOn
        case useEveryLineSwitch:
            label.useEveryLine = isOn
        default:
            break
        }
    }
}

extension ViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        var text: String?
        
        if let textFieldText = textField.text,
            let range = textFieldText.range(from: range) {
            text = textFieldText.replacingCharacters(in: range, with: string)
        }
        
        let floatValue = CGFloat(Double(text ?? "0") ?? 0)
        
        switch textField {
        case numberOfLinesTextField:
            label.numberOfLines = Int(floatValue)
        case heightTextField:
            labelHeightConstraint.constant = floatValue
        case widthTextField:
            labelWidthConstraint.constant = floatValue
        default:
            break
        }
        
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

extension ViewController: UITextViewDelegate {
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if let textViewText = textView.text,
            let range = textViewText.range(from: range) {
            label.text = textViewText.replacingCharacters(in: range, with: text)
        }
        
        return true
    }
}
