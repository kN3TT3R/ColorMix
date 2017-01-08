//
//  ViewController.swift
//  ColorMix
//
//  Created by Kenneth Debruyn on 31/12/16.
//  Copyright © 2016 kN3TT3R. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    // MARK: - IBOutlets
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    // MARK: - Overridden Functions
    override func viewDidLoad() {
        super.viewDidLoad()

        colorView.layer.borderColor = UIColor.gray.cgColor
        colorView.layer.borderWidth = 2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // MARK: - IBActions
    @IBAction func changedSwitch(_ sender: UISwitch) {
        updateColor()
        updateControls()
    }
    
    @IBAction func changedSlider(_ sender: UISlider) {
        updateColor()
    }
    
    @IBAction func resetColors(_ sender: UIButton) {
        redSwitch.isOn = false
        greenSwitch.isOn = false
        blueSwitch.isOn = false
        redSlider.value = 2
        greenSlider.value = 2
        blueSlider.value = 2
        updateColor()
        updateControls()
    }
    
    
    // MARK: - Homemade Functions
    func updateColor() {
        var mixedColor: UIColor = UIColor.clear
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        
        if redSwitch.isOn {
            red = CGFloat(redSlider.value)
        }
        if greenSwitch.isOn {
            green = CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn {
            blue = CGFloat(blueSlider.value)
        }
        
        mixedColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = mixedColor
    }
    
    func updateControls() {
        redSlider.isEnabled = redSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
    }


}

