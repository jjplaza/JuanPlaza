//
//  SetVehicle.swift
//  JuanPlaza
//
//  Created by Juan Plaza on 4/3/17.
//  Copyright © 2017 Juan Plaza. All rights reserved.
//

import UIKit

class SetVehicle: UIViewController {
    

    @IBOutlet weak var vehicleYear: UITextField!
    @IBOutlet weak var carMake: UITextField!
    @IBOutlet weak var carModel: UITextField!
    @IBOutlet weak var carTrim: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.barTintColor = UIColor.white
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let uYear = vehicleYear.text!
        let uMake = carMake.text!
        let uModel = carModel.text!
        let uTrim = carTrim.text!
        
        if (segue.identifier == "goToServices") {
            let showvehicle = segue.destination as? Services
            showvehicle?.carYear = uYear
            showvehicle?.carMake = uMake
            showvehicle?.carModel = uModel
            showvehicle?.carTrim = uTrim
            print(uYear)
        }
        
    }
    
    
    
    
}
