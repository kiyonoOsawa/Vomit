//
//  HomeViewController.swift
//  vomit
//
//  Created by 大澤清乃 on 2020/01/26.
//  Copyright © 2020 大澤清乃. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController,UITableViewDataSource {
    
    //StoryBoardで扱うTableViewを宣言
    @IBOutlet var table: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //テーブルビューのデータソースメゾットはViewControllerクラスに書くよ、という設定
        table.dataSource = self
    }
    
    //セルの数を設定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    //ID付きのセルを取得して、セル付属のtextLabelに「テスト」と表示させてみる
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        cell?.textLabel?.text = "テスト"
        
        return cell!
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("{cellIdentifier}", forIndexPath: indexPath) as! HogeCell
        
        // セルの背景色はなし
         cell.backgroundColor = UIColor.clearColor()
        
        // 選択された背景色を黒に設定
        var cellSelectedBgView = UIView()
        cellSelectedBgView.backgroundColor = UIColor.black
        cell.selectedBackgroundView = cellSelectedBgView
        
        return cell
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
