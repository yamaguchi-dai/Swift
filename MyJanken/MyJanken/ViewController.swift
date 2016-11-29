//
//  ViewController.swift
//  MyJanken
//
//  Created by USER on 2016/11/30.
//  Copyright © 2016年 USER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBOutlet weak var answerImageView: UIImageView!
  @IBOutlet weak var answerLabel: UILabel!

  //じゃんけん数字で管理
  var answerNumber:UInt32=0
  
  @IBAction func shuffleAction(_ sender: AnyObject) {
    
    answerNumber=arc4random_uniform(3)
    if answerNumber==0 {
    answerLabel.text="ぐ"
    answerImageView.image=UIImage(named:"gu")
      
    }else if answerNumber==1{
      //ちょき
      answerLabel.text="ちょき"
      answerImageView.image=UIImage(named:"choki")
    }else if answerNumber==2{
      answerLabel.text="ぱ"
      answerImageView.image=UIImage(named:"pa")
      
    }
  
 
    
  }
}

