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
    @IBOutlet var vomitnamelabel: UILabel!
    @IBOutlet var happy: UILabel!
    @IBOutlet var fun: UILabel!
    @IBOutlet var exciting: UILabel!
    @IBOutlet var strive: UILabel!
    @IBOutlet var dangerous: UILabel!
    @IBOutlet var dislike: UILabel!
    @IBOutlet var angry: UILabel!
    @IBOutlet var anxiety: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        vomitlabel.text = "vomit"
    }
    @IBAction func vomit0() {
        vomitImageView.image = UIImage(named: "vomit0.jpg")
        vomitnamelabel.text = happy.text
    }
    @IBAction func vomit1() {
        vomitImageView.image = UIImage(named: "vomit1.jpg")
       vomitnamelabel.text = fun.text
    }
    @IBAction func vomit2() {
        vomitImageView.image = UIImage(named: "vomit2.jpg")
        vomitnamelabel.text = exciting.text
    }
    @IBAction func vomit3() {
        vomitImageView.image =
            UIImage(named: "vomit3.jpg")
        vomitnamelabel.text = strive.text
    }
    @IBAction func vomit4() {
        vomitImageView.image = UIImage(named: "vomit4.jpg")
        vomitnamelabel.text = dangerous.text
    }
    @IBAction func vomit5() {
        vomitImageView.image = UIImage(named: "vomit5.jpg")
        vomitnamelabel.text = dislike.text
    }
    @IBAction func vomit6() {
        vomitImageView.image = UIImage(named: "vomit6.jpg")
        vomitnamelabel.text = angry.text
    }
    @IBAction func vomit7() {
        vomitImageView.image = UIImage(named: "vomit7.jpg")
        vomitnamelabel.text = anxiety.text
    }
    
    @IBAction func okButton(_ sender: Any?) {
        //        let nextVC = self.presentingViewController as! ViewController
        //        nextVC.vomitImageView = vomitImageView
        //        dismiss(animated: true, completion: nil)
        let preNC = navigationController?.viewControllers[0] as! ViewController
        preNC.vomitImageView = self.vomitImageView
    self.navigationController?.popViewController(animated: true)
        
        preNC.image = vomitImageView
        preNC.levelLabl = vomitlabel
        preNC.vomitLabel = vomitnamelabel

}



//@IBOutlet var vomitImageView: UIImageView!
//@IBOutlet var levelLabrl: UILabel!
//@IBOutlet var vomitLabel: UILabel!


/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destination.
 // Pass the selected object to the new view controller.
 }
 */

}
