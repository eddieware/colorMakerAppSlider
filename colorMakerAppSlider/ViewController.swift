//
//  ViewController.swift
//  colorMakerAppSlider
//
//  Created by EDUARDO MEJIA on 01/02/20.
//  Copyright © 2020 EDDIEWARE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // floats
    var valRedSlider = 0.0
    var valGreenSlider = 0.0
    var valBlueSlider = 0.0
    

    @IBOutlet weak var backGround: UIView!
    
    //Sliders
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    //ActionSwitches
    @IBAction func redSlider(_ sender: UISlider) {
        self.valRedSlider = Double((sender.value))
        changeColor()
    }
    
    @IBAction func greenSwitch(_ sender: UISlider) {
        self.valGreenSlider = Double((sender.value))
        changeColor()
    }
    
    @IBAction func blueSlider(_ sender: UISlider) {
        self.valBlueSlider = Double((sender.value))
        changeColor()
    }
    
    
    
    //function Change Color
    func changeColor(){
        // 0-0-0 backGround.backgroundColor = UIColor(displayP3Red: 0, green: 0, blue: 0, alpha: 1)
               backGround.backgroundColor = UIColor(displayP3Red: CGFloat(valRedSlider), green: CGFloat(valGreenSlider), blue: CGFloat(valBlueSlider), alpha: 1)
               //backGround.backgroundColor = UIColor(displayP3Red:CGFloat(155.0), green: CGFloat(155.0), blue: CGFloat(155.0), alpha: 1)
        
        
        
    }
    
}

