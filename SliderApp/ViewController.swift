//
//  ViewController.swift
//  SliderApp
//
//  Created by Илья Першин on 16.10.2020.
//

import UIKit

class ViewController: UIViewController {

    // MARK: IB Outlets
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redValueLabel: UILabel!
    @IBOutlet weak var greenValueLabel: UILabel!
    @IBOutlet weak var blueValueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    // MARK: Override method
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = colorView.frame.height / 8
        
        sliderSetup(for: redSlider, color: .red)
        sliderSetup(for: greenSlider, color: .green)
        sliderSetup(for: blueSlider, color: .blue)
        
        changeViewColor()
        changeLabelsText()
    }
    
    // MARK: IB Actions
    @IBAction func redSliderValueChanged() {
        changeViewColor()
        changeLabelsText()
    }
    
    @IBAction func blueSliderValueChanged() {
        changeViewColor()
        changeLabelsText()
    }
    
    @IBAction func greenSliderValueChanged() {
        changeViewColor()
        changeLabelsText()
    }
    
    // MARK: Private methods
    private func sliderSetup(for slider: UISlider, color sliderColor: UIColor) {
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.minimumTrackTintColor = sliderColor
        slider.value = round(Float.random(in: 75...100))
    }
    
    private func changeViewColor() {
        let redSliderValue: CGFloat = CGFloat(redSlider.value / 100)
        let greenSliderValue: CGFloat = CGFloat(greenSlider.value / 100)
        let blueSliderValue: CGFloat = CGFloat(blueSlider.value / 100)
        
        colorView.backgroundColor = UIColor(red: redSliderValue,
                                            green: greenSliderValue,
                                            blue: blueSliderValue,
                                            alpha: 1)
    }
    
    private func changeLabelsText() {
        redValueLabel.text = String(format: "%.2f", redSlider.value)
        greenValueLabel.text = String(format: "%.2f", greenSlider.value)
        blueValueLabel.text = String(format: "%.2f", blueSlider.value)
    }
}

