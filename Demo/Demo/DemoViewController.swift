//
//  DemoViewController.swift
//  Demo
//
//  Created by Haggag on 22/05/2024.
//

import UIKit
import DigitEntryView

class DemoViewController: UIViewController {
    
    @IBOutlet var digitEntryView: DigitEntryView!
    let numberOfDigits = 6

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupDigitEntryView()
    }
    private func setupDigitEntryView() {
        configure(digitEntryView)
        digitEntryView.delegate = self
        digitEntryView.becomeFirstResponder()
    }

    private func configure(_ digitView: DigitEntryView) {
        digitView.numberOfDigits = numberOfDigits
        digitView.digitCornerStyle = .radius(5)
        digitView.isSecureDigitEntry = true
        digitView.digitBorderColor = .lightGray
        digitView.nextDigitBorderColor = .blue
        digitView.digitColor = .black
    }
    
    @IBAction private func showPinCode(_ sender: UIButton) {
        digitEntryView.isSecureDigitEntry.toggle()
    }


}

extension DemoViewController: DigitEntryViewDelegate {
    func digitsDidFinish(_ digitEntryView: DigitEntryView) {
        print("")
    }
    
    
}
