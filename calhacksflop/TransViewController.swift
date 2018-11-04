//
//  TransViewController.swift
//  calhacksflop
//
//  Created by anny on 11/4/18.
//  Copyright © 2018 anny. All rights reserved.
//

import UIKit

class TransViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var tcounter: Int!
    

    
    
    
    @IBAction func goodOption(_ sender: Any) {
        tcounter = tcounter - 1
        self.performSegue(withIdentifier: "TransCat", sender: nil)
    }
    
    
    @IBAction func badOption(_ sender: Any) {
        tcounter = tcounter + 1
        self.performSegue(withIdentifier: "TransCat", sender: nil)
    }
    
    
    @IBAction func sedentary(_ sender: Any) {
        self.performSegue(withIdentifier: "TransCat", sender: nil)
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
            vc?.counter = tcounter
        }
    }

}
