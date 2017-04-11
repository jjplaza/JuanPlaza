//
//  SegmentController.swift
//  JuanPlaza
//
//  Created by Juan Plaza on 4/3/17.
//  Copyright © 2017 Juan Plaza. All rights reserved.
//

import UIKit

class SegmentController: UIViewController {
    
    var svc : String?
    var uYear : String?
    var uMake : String?
    var uModel : String?
    var uTrim : String?
  
    @IBOutlet weak var carInfo: UIBarButtonItem!
    
    
    @IBOutlet weak var first: UIView!
    @IBOutlet weak var second: UIView!
    
    @IBOutlet weak var seg: UISegmentedControl!

    @IBAction func segSwitch(_ sender: UISegmentedControl) {
        switch seg.selectedSegmentIndex {
        case 0:
            first.isHidden = true
            second.isHidden = false
            break;
        case 1:
            first.isHidden = false
            second.isHidden = true
            doneButton.isEnabled = true
            break;
        default:
            first.isHidden = false
            second.isHidden = true
            break;
        }
    }
    
    @IBOutlet weak var doneButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        carInfo.title = uYear! + " " + uMake! + " " + uModel!
        
        if (svc == "Turbo/Supercharger") {
            
            seg.setTitle("Turbo", forSegmentAt: 0)
            seg.setTitle("Boost", forSegmentAt: 1)
            
        }
        
        if (svc == "Tuning") {
            
            seg.setTitle("Tune", forSegmentAt: 0)
            seg.setTitle("Boost", forSegmentAt: 1)
            
        }
        
        if (svc == "Suspension") {
            
            seg.setTitle("Air", forSegmentAt: 0)
            seg.setTitle("Height", forSegmentAt: 1)
            
        }
        
        if (svc == "Wheels and Tires") {
            
            seg.setTitle("Wheel", forSegmentAt: 0)
            seg.setTitle("Diameter", forSegmentAt: 1)
            
        }
        
        if (svc == "Brakes") {
            
            seg.setTitle("BBK", forSegmentAt: 0)
            seg.setTitle("Diameter", forSegmentAt: 1)
            
        }
        
        if (svc == "Drivetrain") {
            
            seg.setTitle("Transmission", forSegmentAt: 0)
            seg.setEnabled(false, forSegmentAt: 1)
            seg.setTitle("N/A", forSegmentAt: 1)
            doneButton.isEnabled = true
            
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "goToAdjustments") {
            let adj = segue.destination as? Adjustments
            adj?.svc = svc
            adj?.uYear = uYear
            adj?.uMake = uMake
            adj?.uModel = uModel
            adj?.uTrim = uTrim
            print(svc!)
        }
        
        if (segue.identifier == "goToServiceInfo") {
            let adj = segue.destination as? ServiceInfo
            adj?.svc = svc
            adj?.uYear = uYear
            adj?.uMake = uMake
            adj?.uModel = uModel
            adj?.uTrim = uTrim
            print(svc!)
        }
        
    }
}

