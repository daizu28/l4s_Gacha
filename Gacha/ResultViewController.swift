//
//  ResultViewController.swift
//  Gacha
//
//  Created by 小林玲衣奈 on 2020/09/02.
//  Copyright © 2020 小林玲衣奈. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    //乱数を入れるためのInt型の変数を用意
    var number: Int!
    
    //背景画像とモンスターの画像を表示するためのImageViewを用意
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var monsterImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //0~9までのランダムな数(乱数)を発生させる
        number = Int.random(in: 0...9)
        if number == 9{
            monsterImageView.image = UIImage(named: "steak02_rare")
            backgroundImageView.image = UIImage(named: "bg_gold")
        } else if number > 6 {
            monsterImageView.image = UIImage(named: "steak03_medium_rare")
            backgroundImageView.image = UIImage(named: "bg_red")
        } else {
            monsterImageView.image = UIImage(named: "steak06_well_done")
            backgroundImageView.image = UIImage(named: "bg_blue")
        }
    }
    
    @IBAction func back(){
        self.dismiss(animated: true, completion: nil)
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
