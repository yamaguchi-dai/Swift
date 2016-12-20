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
  //var test2:Array = ["山田", "
  var image : Array = ["gu","choki","pa"]
  var text : Array = ["グー","チョキ","パー"]
  
  @IBAction func shuffle(_ sender: Any) {
    
    //じゃんけんよう乱数
    
    
    repeat{
      newI=arc4random_uniform(3)
    }while i==newI
    
    i=newI
    resulti=resulti+1
    
      resultLabel.text=text[Int(i)]
      resultImage.image=UIImage(named:image[Int(i)])
   
    result.text=String(resulti)
    
  }
}


