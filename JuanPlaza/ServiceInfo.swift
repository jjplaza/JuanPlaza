//
//  ServiceInfo.swift
//  JuanPlaza
//
//  Created by Juan Plaza on 4/9/17.
//  Copyright © 2017 Juan Plaza. All rights reserved.
//

import UIKit

class ServiceInfo: UIViewController {
    
    var svc : String?
    var uYear : String?
    var uMake : String?
    var uModel : String?
    var uTrim : String?
    
    @IBOutlet weak var tuneStack: UIStackView!
    
    @IBOutlet weak var autoInfoStack: UIStackView!
    @IBOutlet weak var wheelSwitch: UISwitch!
    @IBOutlet weak var turboInfoStack: UIStackView!
    @IBOutlet weak var tuneInfoStack: UIStackView!
    @IBOutlet weak var suspensionStack: UIStackView!
    @IBOutlet weak var suspensionInfoStack: UIStackView!

    @IBOutlet weak var manualSwitch: UISwitch!
    @IBOutlet weak var autoSwitch: UISwitch!
    @IBOutlet weak var manuaInfoStack: UIStackView!
    @IBOutlet weak var drivetrainStack: UIStackView!
    @IBOutlet weak var brakeInfoStack: UIStackView!
    @IBOutlet weak var brakeSwitch: UISwitch!
    @IBOutlet weak var brakeStack: UIStackView!
    @IBOutlet weak var wheelInfoStack: UIStackView!
    @IBOutlet weak var wheelStack: UIStackView!
    @IBOutlet weak var suspensionSwitch: UISwitch!
    @IBOutlet weak var tuneSwitch: UISwitch!
    @IBOutlet weak var turboStack: UIStackView!
    @IBOutlet weak var pteSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        pteSwitch.isOn = false
        tuneSwitch.isOn = false
        suspensionSwitch.isOn = false
        wheelSwitch.isOn = false
        brakeSwitch.isOn = false
        autoSwitch.isOn = false
        manualSwitch.isOn = false
        
        turboStack.isHidden = true
        tuneStack.isHidden = true
        suspensionStack.isHidden = true
        wheelStack.isHidden = true
        brakeStack.isHidden = true
        drivetrainStack.isHidden = true
        
        if (svc == "Turbo/Supercharger") {
            
            turboStack.isHidden = false
            turboInfoStack.isHidden = true
            
        }
        
        if (svc == "Tuning") {
            
            tuneStack.isHidden = false
            tuneInfoStack.isHidden = true
            
        }
        
        if (svc == "Drivetrain") {
            
            drivetrainStack.isHidden = false
            autoInfoStack.isHidden = true
            manuaInfoStack.isHidden = true
            
        }
        
        if (svc == "Suspension") {
            
            suspensionStack.isHidden = false
            suspensionInfoStack.isHidden = true
            
        }
        
        if (svc == "Wheels and Tires") {
            
            wheelStack.isHidden = false
            wheelInfoStack.isHidden = true
            
        }
        
        if (svc == "Brakes") {
            
            brakeStack.isHidden = false
            brakeInfoStack.isHidden = true
            
        }
    }
    @IBAction func tuneToggle(_ sender: UISwitch) {
        
        if tuneSwitch.isOn {
            tuneInfoStack.isHidden = false
        } else {
            tuneInfoStack.isHidden = true
        }
        
    }
    
    @IBAction func wheelToggle(_ sender: UISwitch) {
        if wheelSwitch.isOn {
            wheelInfoStack.isHidden = false
        } else {
            wheelInfoStack.isHidden = true
        }
    }
    @IBAction func suspensionToggle(_ sender: UISwitch) {
        if suspensionSwitch.isOn {
            suspensionInfoStack.isHidden = false
        } else {
            suspensionInfoStack.isHidden = true
        }
    }
    @IBAction func pteToggle(_ sender: UISwitch) {
        
        if pteSwitch.isOn {
            turboInfoStack.isHidden = false
        } else {
            turboInfoStack.isHidden = true
        }
    }
    @IBAction func manualToggle(_ sender: UISwitch) {
        if manualSwitch.isOn {
            manuaInfoStack.isHidden = false
            autoSwitch.isEnabled = false
        } else {
            manuaInfoStack.isHidden = true
            autoSwitch.isEnabled = true
        }
        
    }
    @IBAction func autoToggle(_ sender: UISwitch) {
        if autoSwitch.isOn {
            autoInfoStack.isHidden = false
            manualSwitch.isEnabled = false
        } else {
            autoInfoStack.isHidden = true
            manualSwitch.isEnabled = true
        }
        
    }
    
    @IBAction func brakeToggle(_ sender: UISwitch) {
        if brakeSwitch.isOn {
            brakeInfoStack.isHidden = false
        } else {
            brakeInfoStack.isHidden = true
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
