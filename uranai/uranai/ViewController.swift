//
//  ViewController.swift
//  URANAI
//
//  Created by USER on 2016/12/13.
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
  @IBOutlet weak var result: UILabel!
 
  
  
  var list=["大吉","吉","末吉","まあまあ","だめ"]
  
  @IBAction func runbutton(_ sender: Any) {
   
     let i=arc4random_uniform(5)
    
    result.text=list[Int(i)]
    
  }
  

}

