//
//  Services.swift
//  JuanPlaza
//
//  Created by Juan Plaza on 4/4/17.
//  Copyright © 2017 Juan Plaza. All rights reserved.
//

import UIKit

class Services: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var list: [String] = ["Turbo/Supercharger", "Tuning", "Drivetrain", "Suspension", "Brakes", "Wheels and Tires"]
    
    var carYear : String?
    var carMake : String?
    var carModel : String?
    var carTrim : String?
    var service: String?
    
    @IBOutlet weak var tbView: UITableView!
    
    @IBOutlet weak var cellContent: UITableViewCell!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tbView.delegate = self
        self.tbView.dataSource = self
        self.automaticallyAdjustsScrollViewInsets = false
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell : UITableViewCell = self.tbView.dequeueReusableCell(withIdentifier: "cell")! as UITableViewCell
        cell.textLabel?.text = list[indexPath.row]
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(list[indexPath.row])
        service = self.list[indexPath.row]
        performSegue(withIdentifier: "goToDetails", sender: self)
    
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return carYear! + " " + carMake! + " " + carModel!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "goToDetails") {
            let details = segue.destination as? Details
            details?.carYear = carYear
            details?.carMake = carMake
            details?.carModel = carModel
            details?.carTrim = carTrim
            details?.userService = self.service
        }
        
    }
    

    
    
}
