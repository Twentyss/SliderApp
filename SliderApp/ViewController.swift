//
//  ViewController.swift
//  SliderApp
//
//  Created by Илья Першин on 16.10.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redValueLabel: UILabel!
    @IBOutlet weak var greenValueLabel: UILabel!
    @IBOutlet weak var blueValueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = colorView.frame.height / 8
        slidersSetup()
        changeViewColor(redSlider.value, greenSlider.value, blueSlider.value)
    }
    
    @IBAction func redSliderValueChanged() {
        changeViewColor(redSlider.value, greenSlider.value, blueSlider.value)
    }
    
    @IBAction func blueSliderValueChanged() {
        changeViewColor(redSlider.value, greenSlider.value, blueSlider.value)
    }
    
    @IBAction func greenSliderValueChanged() {
        changeViewColor(redSlider.value, greenSlider.value, blueSlider.value)
    }
    
    func slidersSetup() {
        redSlider.value = 0
        redSlider.minimumValue = 0
        redSlider.maximumValue = 100
        
        greenSlider.value = 0
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 100
        
        blueSlider.value = 0
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 100
    }
    
    func changeViewColor(_ redSliderValue: Float, _ greenSliderValue: Float, _ blueSliderValue: Float) {

        redValueLabel.text = String(floor(redSliderValue))
        greenValueLabel.text = String(floor(greenSliderValue))
        blueValueLabel.text = String(floor(blueSliderValue))
        
        colorView.backgroundColor = UIColor(red: CGFloat(redSliderValue / 100), green: CGFloat(greenSliderValue / 100), blue: CGFloat(blueSliderValue / 100), alpha: 1)
    }
    
}

