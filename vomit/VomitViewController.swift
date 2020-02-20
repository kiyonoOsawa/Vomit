//
//  VomitViewController.swift
//  vomit
//
//  Created by 大澤清乃 on 2020/01/12.
//  Copyright © 2020 大澤清乃. All rights reserved.
//

import UIKit

class VomitViewController: UIViewController {
    
    @IBOutlet var vomitlabel: UILabel!
    @IBAction func sliderChanged(_ sender: UISlider) {
    vomitlabel.text = String(Int(round(sender.value * 100)))
    }
    @IBOutlet var vomitImageView: UIImageView!
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
        vomitlabel.text = "vomit"
    }
    @IBAction func happy() {
        vomitImageView.image = UIImage(named: "mori0.jpg")
    }
    @IBAction func trust() {
        vomitImageView.image = UIImage(named: "mori1.jpeg")
    }
    @IBAction func scared() {
        vomitImageView.image = UIImage(named: "mori2.jpg")
    }
    @IBAction func surprise() {
        vomitImageView.image = UIImage(named: "mori3.jpg")
    }
    @IBAction func sadder() {
        vomitImageView.image = UIImage(named: "mori4.jpg")
    }
    @IBAction func dislike() {
        vomitImageView.image = UIImage(named: "mori5.jpg")
    }
    @IBAction func anger() {
        vomitImageView.image = UIImage(named: "mori6.jpg")
    }
    @IBAction func expectation() {
        vomitImageView.image = UIImage(named: "mori7.jpeg")
    }
    
    func segueToSecondViewController() {
        self.performSegue(withIdentifier: "toSecondViewController", sender: nil)
    }
    @IBAction func okButton() {
        self.navigationController?.popToRootViewController(animated: true)
    }
        if segue.identifier == "toSecondViewController" {
            let secondViewController = segue.destination as! ViewController
            secondViewController.parameters = sender as! [String : String]
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
}

