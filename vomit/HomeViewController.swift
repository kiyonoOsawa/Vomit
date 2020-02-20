//
//  HomeViewController.swift
//  vomit
//
//  Created by 大澤清乃 on 2020/01/26.
//  Copyright © 2020 大澤清乃. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    //StoryBoardで扱うTableViewを宣言
    @IBOutlet var table: UITableView!
    
    let userDefault = UserDefaults()
    var vomitsArray: [[String]] = []

    override func viewDidLoad() {
    super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //テーブルビューのデータソースメゾットはViewControllerクラスに書くよ、という設定
        table.dataSource = self
        table.delegate = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(userDefault.array(forKey: "vomit") as! [String])
        vomitsArray.append(userDefault.array(forKey: "vomit") as! [String])
        table.reloadData()
    }
    
    //セルの数を設定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vomitsArray.count
    }
    //ID付きのセルを取得して、セル付属のtextLabelに「テスト」と表示させてみる
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        cell?.textLabel?.text = vomitsArray[indexPath.row][0]
        
        return cell!
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(String(indexPath.row))
        self.performSegue(withIdentifier: "toDetail", sender: nil)
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
