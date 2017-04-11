//
//  About.swift
//  JuanPlaza
//
//  Created by Juan Plaza on 4/10/17.
//  Copyright © 2017 Juan Plaza. All rights reserved.
//

import UIKit

class About: UIViewController {
    
    @IBOutlet weak var pic: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        pic.layer.borderWidth = 1
        pic.layer.borderColor = UIColor.white.cgColor
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
