//
//  ViewController.swift
//  Janken
//
//  Created by USER on 2016/12/08.
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
  
  
  @IBOutlet weak var resultImage: UIImageView!
  @IBOutlet weak var resultLabel: UILabel!
  @IBOutlet weak var result: UILabel!
  
  var i:UInt32=0
  var newI:UInt32=0
  var resulti:UInt32=0
  
  @IBAction func shuffle(_ sender: Any) {
    
    //じゃんけんよう乱数
    
    
    repeat{
      newI=arc4random_uniform(3)
    }while i==newI
    
    i=newI
    resulti=resulti+1
    
    if(i==0){
      resultLabel.text="グー"
      resultImage.image=UIImage(named:"gu")
    }else if i==1{
      resultLabel.text="チョキ"
      resultImage.image=UIImage(named:"choki")
    }else if i==2{
      resultLabel.text="パー"
      resultImage.image=UIImage(named:"pa")
    }
    result.text=String(resulti)
    
  }
}


