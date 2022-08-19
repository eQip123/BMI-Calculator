//
//  MainView.swift
//  BMI-Calculator
//
//  Created by Aidar Asanakunov on 31/7/22.
//

import Foundation
import UIKit
import SnapKit

class MainView: UIView {
    let background: UIImageView = {
        let background = UIImageView()
        background.image = UIImage(named: "calculate_background")
        return background
    }()
    let titleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.numberOfLines = 0
        label.text = "РАССЧИТАТЬ СВОЙ ИМТ"
        label.font = .boldSystemFont(ofSize: 40)
        label.textColor = .darkGray
        return label
    }()
    let calculateButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .init(red: 98/255, green: 97/255, blue: 156/255, alpha: 1)
        button.setTitle("РАССЧИТАТЬ", for: .normal)
        return button
    }()
    let secondSlider: UISlider = {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 200
        slider.value = 100
        return slider
    }()
    let weightLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Вес"
        label.font = .systemFont(ofSize: 15, weight: .regular)
        label.textColor = .darkGray
        return label
    }()
    let kgLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "100 кг"
        label.font = .systemFont(ofSize: 15, weight: .regular)
        label.textColor = .darkGray
        return label
    }()
    let firstSlider: UISlider = {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 3
        slider.value = 1.5
        return slider
    }()
    let heightLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Рост"
        label.font = .systemFont(ofSize: 15, weight: .regular)
        label.textColor = .darkGray
        return label
    }()
    let cmLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "2.00 см"
        label.font = .systemFont(ofSize: 15, weight: .regular)
        label.textColor = .darkGray
        return label
    }()
 
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        makeConstraints()
    }
    func makeConstraints() {
        self.addSubview(background)
        background.addSubview(titleLabel)
        self.addSubview(secondSlider)
        self.addSubview(calculateButton)
        self.addSubview(weightLabel)
        self.addSubview(kgLabel)
        self.addSubview(firstSlider)
        self.addSubview(heightLabel)
        self.addSubview(cmLabel)
        background.snp.makeConstraints { make in
            make.top.bottom.trailing.leading.equalToSuperview()
        }
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(background.snp.top).inset(270)
            make.width.equalTo(300)
            make.leading.equalTo(background.snp.leading).inset(20)
        }
        calculateButton.snp.makeConstraints { make in
            make.bottom.equalToSuperview().inset(50)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(51)
        }
        secondSlider.snp.makeConstraints { make in
            make.bottom.equalTo(calculateButton.snp.top).inset(-20)
            make.leading.trailing.equalToSuperview().inset(20)
        }
        weightLabel.snp.makeConstraints { make in
            make.bottom.equalTo(secondSlider.snp.top).inset(-20)
            make.leading.equalToSuperview().inset(20)
        }
        kgLabel.snp.makeConstraints { make in
            make.bottom.equalTo(secondSlider.snp.top).inset(-20)
            make.trailing.equalToSuperview().inset(20)
        }
        firstSlider.snp.makeConstraints { make in
            make.bottom.equalTo(weightLabel.snp.top).inset(-20)
            make.leading.trailing.equalToSuperview().inset(20)
        }
        heightLabel.snp.makeConstraints { make in
            make.bottom.equalTo(firstSlider.snp.top).inset(-20)
            make.leading.equalToSuperview().inset(20)
        }
        cmLabel.snp.makeConstraints { make in
            make.bottom.equalTo(firstSlider.snp.top).inset(-20)
            make.trailing.equalToSuperview().inset(20)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
