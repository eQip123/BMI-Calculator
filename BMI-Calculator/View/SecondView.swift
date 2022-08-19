//
//  SecondView.swift
//  BMI-Calculator
//
//  Created by Aidar Asanakunov on 31/7/22.
//

import Foundation
import UIKit
import SnapKit
class SecondView: UIView {
    let backgroundImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "result_background")
        return imageView
    }()
//    let stackView: UIStackView = {
//        let stackView = UIStackView(arrangedSubviews: [])
//        stackView.axis = .vertical
//        return stackView
//    }()
    let yourResultLabel: UILabel = {
        let label = UILabel()
        label.text = "ТВОЙ РЕЗУЛЬТАТ"
        label.textColor = .white
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 35, weight: .bold)
        return label
    }()
    let bmiLabel: UILabel = {
        let label = UILabel()
        label.text = "19.5"
        label.textColor = .white
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 80, weight: .bold)
        return label
    }()
    let messageLabel: UILabel = {
        let label = UILabel()
        label.text = "НУЖНО БОЛЬШЕ МАССЫ"
        label.textColor = .white
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 20, weight: .light)
        return label
    }()
    override init(frame: CGRect) {
        super .init(frame: frame)
        makeConstraints()
    }
    let recalculateButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .white
        button.setTitleColor(UIColor.init(red: 98/255, green: 97/255, blue: 156/255, alpha: 1), for: .normal)
        button.setTitle("ПЕРЕСЧИТАТЬ", for: .normal)
        return button
    }()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func makeConstraints() {
        self.addSubview(backgroundImage)
        self.addSubview(yourResultLabel)
        self.addSubview(bmiLabel)
        self.addSubview(messageLabel)
        self.addSubview(recalculateButton)
        backgroundImage.snp.makeConstraints { make in
            make.top.bottom.trailing.leading.equalToSuperview()
        }
        yourResultLabel.snp.makeConstraints { make in
            make.top.equalTo(bmiLabel.snp.top).inset(-40)
            make.leading.trailing.equalToSuperview().inset(20)
        }
        bmiLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        messageLabel.snp.makeConstraints { make in
            make.top.equalTo(bmiLabel.snp.bottom).inset(-5)
            make.leading.trailing.equalToSuperview().inset(20)
        }
        recalculateButton.snp.makeConstraints { make in
            make.bottom.equalToSuperview().inset(50)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(51)
        }
    }
}
