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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        print("Hello world@")
        self.performSegue(withIdentifier: "MyCoolSegue", sender: nil)
    }
}

