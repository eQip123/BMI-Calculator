//
//  SecondViewController.swift
//  BMI-Calculator
//
//  Created by Aidar Asanakunov on 31/7/22.
//

import Foundation
import UIKit
class SecondViewController: UIViewController {
    
    var bmiValue: String?
    var bmiAdvice: String?
    var bmiColor: UIColor?
    let secondView = SecondView()
    override func loadView() {
        super.loadView()
        self.view = secondView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        secondView.recalculateButton.addTarget(self, action: #selector(recalculteButtonPressed), for: .touchUpInside)
        view.backgroundColor = .systemBlue
        self.secondView.bmiLabel.text = bmiValue
        self.secondView.messageLabel.text = bmiAdvice
        self.secondView.backgroundColor = bmiColor
    }
    @objc func recalculteButtonPressed() {
        self.dismiss(animated: true, completion: nil)
    }
}
