

import UIKit

class ViewController: UIViewController {
    
    let mainView = MainView()
    var calculateBrain = CalculateBrain()
    
    override func loadView() {
        super.loadView()
        self.view = mainView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.calculateButton.addTarget(self, action: #selector(calculteButtonPressed), for: .touchUpInside)
        targetSliders()
    }
    func targetSliders() {
        mainView.firstSlider.addTarget(self, action: #selector(heightSliderChanged(_:)), for: .valueChanged)
        mainView.secondSlider.addTarget(self, action: #selector(weightSliderChanged(_:)), for: .valueChanged)
    }

    @objc func calculteButtonPressed() {
        print("Click")
        let secondVC = SecondViewController()
        secondVC.modalPresentationStyle = .fullScreen
        let height = mainView.firstSlider.value
        let weight = mainView.secondSlider.value
        
        calculateBrain.calculateBrain(height: height, weight: weight)
        let getBMIValue = calculateBrain.getBMIValue()
        secondVC.bmiValue = getBMIValue
        secondVC.bmiAdvice = calculateBrain.getAdvice()
        secondVC.bmiColor = calculateBrain.getColor()
        self.present(secondVC, animated: true)
    }
    @objc func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        mainView.cmLabel.text = "\(height) см"
    }
    @objc func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        mainView.kgLabel.text = "\(weight) кг"
    }

    
}

