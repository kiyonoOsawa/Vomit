//
//  VomitViewController.swift
//  vomit
//
//  Created by 大澤清乃 on 2020/01/12.
//  Copyright © 2020 大澤清乃. All rights reserved.
//

import UIKit

class VomitViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
   
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        label.text = String(Int(round(sender.value * 100)))
        
    }
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
        label.text = "vomit"
    
    }
    
    @IBAction func happy() {
        label.text = String()
        
    }
    
    @IBAction func trust() {
        label.text = String()
        
    }
    
    @IBAction func scared() {
        label.text = String()
        
    }
    
    @IBAction func surprise() {
        label.text = String()
        
    }
    
    @IBAction func sadder() {
        label.text = String()
        
    }
    
    @IBAction func dislike() {
        label.text = String()
        
    }
    
    @IBAction func anger() {
        label.text = String()
        
    }
    
    @IBAction func expectation() {
        label.text = String()
        
    }
   
    
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    

}
