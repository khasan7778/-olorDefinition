//
//  ViewController.swift
//  СolorDefinition
//
//  Created by Хасан Балхаев on 11.12.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var red: UILabel!
    @IBOutlet weak var green: UILabel!
    @IBOutlet weak var blue: UILabel!
    
    @IBOutlet weak var meaningRedSlider: UILabel!
    @IBOutlet weak var meaningGreenSlider: UILabel!
    @IBOutlet weak var meaningBlueSlider: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var colorDefinition: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        red.text = "Red:"
//        не смог слово вписать полностью(((
        green.text = "Green:"
        blue.text = "Blue:"

        redSlider.value = 0
        greenSlider.value = 0
        blueSlider.value = 0
        
        meaningRedSlider.text = String(redSlider.value)
        meaningGreenSlider.text = String(greenSlider.value)
        meaningBlueSlider.text = String(blueSlider.value)
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        
        colorDefinition.backgroundColor = .black
    }

    
    func changeColor() {
        colorDefinition.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    
    @IBAction func rgbSlider() {
        meaningRedSlider.text = String(round(redSlider.value * 100) / 100)
        meaningGreenSlider.text = String(round(greenSlider.value * 100) / 100)
        meaningBlueSlider.text = String(round(blueSlider.value * 100) / 100)

        changeColor()
    }
}

