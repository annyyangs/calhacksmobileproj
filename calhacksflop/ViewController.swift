//
//  ViewController.swift
//  calhacksflop
//
//  Created by anny on 11/3/18.
//  Copyright © 2018 anny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var titleopen: UILabel!
    @IBOutlet var abby: UIView!
    @IBOutlet weak var firstbutton: UIButton!
    var hcounter: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        hcounter = 20
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "MyCoolSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is ViewControllerHome {
            let iv = segue.destination as? ViewControllerHome
            iv?.counter = hcounter
        }
    }
    
   
}

