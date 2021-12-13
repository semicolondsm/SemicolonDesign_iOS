//
//  SCTextView.swift
//  SemicolonDesign
//
//  Created by 김수완 on 2021/12/13.
//

import UIKit

class SCTextView: UILabel {
    
    override var text: String? {
        get {
            return super.text
        }
        set(newText) {
            super.text = newText
            self.setTypography()
        }
    }

    private var lineSpace: CGFloat {
        get {
            return round(self.font.pointSize/4)
        }
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)!
        self.numberOfLines = 0
    }

    private func setTypography() {
        let attrString = NSMutableAttributedString(string: super.text ?? " ")
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = lineSpace
        attrString.addAttribute(
            NSAttributedString.Key.paragraphStyle,
            value: paragraphStyle,
            range: NSMakeRange(0, attrString.length)
        )
        self.attributedText = attrString
    }

}
