//
//  Adjustments.swift
//  JuanPlaza
//
//  Created by Juan Plaza on 4/8/17.
//  Copyright © 2017 Juan Plaza. All rights reserved.
//

import UIKit

class Adjustments: UIViewController {
    
    var svc : String?
    var uYear : String?
    var uMake : String?
    var uModel : String?
    var uTrim : String?
    
    @IBOutlet weak var psiLvl: UILabel!
    @IBOutlet weak var heightLvl: UILabel!
    @IBOutlet weak var wheelLvl: UILabel!
    @IBOutlet weak var brakeLvl: UILabel!
    
    @IBOutlet weak var boostSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var brakeSlider: UISlider!
    @IBOutlet weak var wheelSlider: UISlider!
    
    @IBOutlet weak var boostStack: UIStackView!
    @IBOutlet weak var heightStack: UIStackView!
    
    @IBOutlet weak var brakeStack: UIStackView!
    @IBOutlet weak var wheelStack: UIStackView!
    
    @IBAction func height(_ sender: UISlider) {
        let currentLvl = Int(sender.value)
        heightLvl.text = "\(currentLvl)"
    }
    
    @IBAction func boost(_ sender: UISlider) {
        let currentLvl = Int(sender.value)
        psiLvl.text = "\(currentLvl)"
    }
    
    @IBAction func wheel(_ sender: UISlider) {
        let currentLvl = Int(sender.value)
        wheelLvl.text = "\(currentLvl)"
    }
    
    @IBAction func brake(_ sender: UISlider) {
        let currentLvl = Int(sender.value)
        brakeLvl.text = "\(currentLvl)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        boostStack.isHidden = true
        heightStack.isHidden = true
        wheelStack.isHidden = true
        brakeStack.isHidden = true
        
        
        if (svc == "Turbo/Supercharger") {
            
            let boostLvl = Int(boostSlider.value)
            psiLvl.text = String(describing: boostLvl)
            boostStack.isHidden = false
            
        }
        
        if (svc == "Tuning") {
            
            let boostLvl = Int(boostSlider.value)
            psiLvl.text = String(describing: boostLvl)
            boostStack.isHidden = false
            
        }
        
        if (svc == "Drivetrain") {
            
            
        }
        
        if (svc == "Suspension") {
            
            let dropLvl = Int(heightSlider.value)
            heightLvl.text = String(describing: dropLvl)
            heightStack.isHidden = false
            
        }
        
        if (svc == "Wheels and Tires") {
            
            let rimLvl = Int(wheelSlider.value)
            wheelLvl.text = String(describing: rimLvl)
            wheelStack.isHidden = false
            
        }
        
        if (svc == "Brakes") {
            
            let bbkLvl = Int(brakeSlider.value)
            brakeLvl.text = String(describing: bbkLvl)
            brakeStack.isHidden = false
            
        }
        
    }
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
