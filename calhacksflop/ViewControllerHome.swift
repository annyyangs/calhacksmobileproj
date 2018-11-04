//
//  ViewControllerHome.swift
//  calhacksflop
//
//  Created by anny on 11/4/18.
//  Copyright © 2018 anny. All rights reserved.
//

import UIKit

class ViewControllerHome: UIViewController {

    @IBOutlet weak var displayPts: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayPts.text = String(counter)
        // Do any additional setup after loading the view.
    }
    
    var counter: Int!
    
    @IBAction func transButtonPressed(_ sender: Any) {
    self.performSegue(withIdentifier: "CatTrans", sender: nil)
    }
    
   
    
    func check() {
        if counter > 30 {
            let wrongAlert = UIAlertController(title: "Uh oh", message: "You are being more wasteful than the average American! Your plant lost a leaf.", preferredStyle: UIAlertController.Style.alert)
            wrongAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(wrongAlert, animated: true, completion: nil)
        }
        if counter < 10 {
            let gAlert = UIAlertController(title: "Good News", message: "You are being more efficient than the average American! Your plant grew a leaf.", preferredStyle: UIAlertController.Style.alert)
            gAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(gAlert, animated: true, completion: nil)
        }
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
        if segue.destination is FoodViewController
        {
            let vc = segue.destination as? FoodViewController
            vc?.fcounter = counter
        }
        
        if segue.destination is TransViewController
        {
            let vc = segue.destination as? TransViewController
            vc?.tcounter = counter
        }
    }

}
