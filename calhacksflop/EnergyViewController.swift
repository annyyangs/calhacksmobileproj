//
//  EnergyViewController.swift
//  calhacksflop
//
//  Created by anny on 11/4/18.
//  Copyright © 2018 anny. All rights reserved.
//

import UIKit

class EnergyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        stepper.wraps = true
        stepper.autorepeat = true
        stepper.maximumValue = 10
    }
    var ecounter: Int!
    @IBOutlet weak var valueLabel: UILabel!
    
    @IBOutlet weak var stepper: UIStepper!
    
    @IBAction func stepperValueChange(_ sender: Any) {
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        valueLabel.text = Int(sender.value).description
        ecounter = Int(sender.value) + ecounter
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is ViewControllerHome
        {
            let vc = segue.destination as? ViewControllerHome
            vc?.counter = ecounter
        }
        
    }
    

}
