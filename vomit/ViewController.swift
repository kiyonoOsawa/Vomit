//
//  ViewController.swift
//  vomit
//
//  Created by 大澤清乃 on 2020/01/05.
//  Copyright © 2020 大澤清乃. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var titleField: UITextField!
    @IBOutlet var settingButton: UIButton!
    @IBOutlet var saveButton: UIButton!
    @IBOutlet weak var dateField: UITextField!
    
    //UIDatePickerを定義するための変数
    var datePicker: UIDatePicker = UIDatePicker()
    var vomitArray: [String] = []
    let userDefaults = UserDefaults()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        saveButton.layer.cornerRadius = 8.0
        settingButton.layer.addSublayer(drawTopBorder(borderWidth: 0.5, borderColor: .black, ui: settingButton))
        settingButton.layer.addSublayer(drawUnderBorder(borderWidth: 0.5, borderColor: .black, ui: settingButton))
        
        // ピッカー設定
        datePicker.datePickerMode = UIDatePicker.Mode.date
        datePicker.timeZone = NSTimeZone.local
        datePicker.locale = Locale.current
        dateField.inputView = datePicker

        // 決定バーの生成
        let toolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 35))
        let spacelItem = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        let doneItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(done))
        toolbar.setItems([spacelItem, doneItem], animated: true)

        // インプットビュー設定(紐づいているUITextfieldへ代入)
        dateField.inputView = datePicker
        dateField.inputAccessoryView = toolbar
    }
    
    // UIDatePickerのDoneを押したら発火
    @objc func done() {
        dateField.endEditing(true)

        // 日付のフォーマット
        let formatter = DateFormatter()

        //"yyyy年MM月dd日"を"yyyy/MM/dd"したりして出力の仕方を好きに変更できるよ
        formatter.dateFormat = "yyyy年MM月dd日"

        //(from: datePicker.date))を指定してあげることで
        //datePickerで指定した日付が表示される
        dateField.text = "\(formatter.string(from: datePicker.date))"

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
    
    @IBAction func save() {
        vomitArray.append(titleField.text!)
        userDefaults.set(vomitArray, forKey: "vomit")
    }
    
    @IBAction func dismiss() {
        self.dismiss(animated: true, completion: nil)
    }
    
    

}
