//
//  FoodViewController.swift
//  calhacksflop
//
//  Created by anny on 11/4/18.
//  Copyright © 2018 anny. All rights reserved.
//

import UIKit

class FoodViewController: UIViewController {

   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
      var fcounter: Int!
   
    
    @IBAction func meatClicked(_ sender: Any) {
        increment()
        performSegue(withIdentifier: "meatcat", sender: nil)
    }
    
    
    
    @IBAction func goodOption(_ sender: Any) {
        decrement()
        performSegue(withIdentifier: "meatcat", sender: nil)
        
    }

    
    
    func decrement() {
        fcounter = fcounter - 1
    }
    func increment() {
        fcounter = fcounter + 1
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
            vc?.counter = fcounter
        }
    
    }

}
