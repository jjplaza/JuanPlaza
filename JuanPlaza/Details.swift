//
//  Details.swift
//  JuanPlaza
//
//  Created by Juan Plaza on 4/4/17.
//  Copyright © 2017 Juan Plaza. All rights reserved.
//

import UIKit

class Details: UIViewController {
    
    var carYear : String?
    var carMake : String?
    var carModel : String?
    var carTrim : String?
    
    var userService: String?
    
    
    @IBOutlet weak var userYear: UILabel!
    
    @IBOutlet weak var userMake: UILabel!
    
    @IBOutlet weak var userModel: UILabel!
    
    @IBOutlet weak var userTrim: UILabel!
    
    @IBOutlet weak var userSvc: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        userYear.text = carYear
        userMake.text = carMake
        userModel.text = carModel
        userTrim.text = carTrim
        userSvc.text = userService
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let uYear = userYear.text!
        let uMake = userMake.text!
        let uModel = userModel.text!
        let uTrim = userTrim.text!
        
        if (segue.identifier == "goToSegment") {
            let segment = segue.destination as? SegmentController
            segment?.svc = userService
            segment?.uYear = uYear
            segment?.uMake = uMake
            segment?.uModel = uModel
            segment?.uTrim = uTrim
            
            print(userService!)
        }
        
    }
    
    
}
