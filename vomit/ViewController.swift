//
//  ViewController.swift
//  vomit
//
//  Created by 大澤清乃 on 2020/01/05.
//  Copyright © 2020 大澤清乃. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var settingButton: UIButton!
    @IBOutlet var saveButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        saveButton.layer.cornerRadius = 8.0
        settingButton.layer.addSublayer(drawTopBorder(borderWidth: 0.5, borderColor: .black, ui: settingButton))
        settingButton.layer.addSublayer(drawUnderBorder(borderWidth: 0.5, borderColor: .black, ui: settingButton))
    }
    
    func drawTopBorder(borderWidth: CGFloat, borderColor: UIColor, ui:AnyObject) -> CALayer{
        let border = CALayer()
        border.frame = CGRect(x: 0.0, y: 0.0, width: ui.frame.size.width, height: borderWidth)
        border.backgroundColor = borderColor.cgColor
        return border
    }
    
    func drawUnderBorder(borderWidth: CGFloat, borderColor: UIColor, ui:AnyObject) -> CALayer{
        let border = CALayer()
        border.frame = CGRect(x: 0.0, y: ui.frame.size.height-borderWidth, width: ui.frame.size.width, height: borderWidth)
        border.backgroundColor = borderColor.cgColor
        return border
    }
    
    @IBAction func dismiss() {
        self.dismiss(animated: true, completion: nil)
    }
    
    

}
