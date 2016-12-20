//
//  ViewController.swift
//  Timer
//
//  Created by USER on 2016/12/16.
//  Copyright © 2016年 USER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var timer : Timer?
  var count = 0
  let settingkey = "timer_value"
  
//ViewControllerの起動時に一度だけ実行される機能
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    let settings = UserDefaults.standard
    
    settings.register(defaults: [settingkey:10])
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBOutlet weak var countDownLabel: UILabel!
  @IBAction func settingButtonAction(_ sender: Any) {
    
    if let nowTimer = timer {
      if nowTimer.isValid == true {
        nowTimer.invalidate()
      }
    }
    performSegue(withIdentifier: "goSetting", sender: nil)
    }
  @IBAction func startButtonAction(_ sender: Any) {
    if let nowTimer = timer {
      if nowTimer.isValid == true {
        return
      }
    }
    timer = Timer.scheduledTimer(timeInterval: 1.0,target: self,selector: #selector(self.timerInterrupt(_:)),userInfo: nil,repeats: true)
  }
  @IBAction func stopButtonAction(_ sender: Any) {
    if let nowTimer = timer {
      if nowTimer.isValid == true {
        nowTimer.invalidate()
      }
    }
  }
  
  func displayUpdate() -> Int {
    let settings = UserDefaults.standard
    
    let timerValue = settings.integer(forKey: settingkey)
    
    let remainCount = timerValue - count
    
    countDownLabel.text = "残り\(remainCount)秒"
    
    return remainCount
  }
  
  func timerInterrupt(_ timer:Timer) {
    
    count += 1
    if displayUpdate() <= 0 {
      count = 0
      
      timer.invalidate()
    }
  }
  override func viewDidAppear(_ animated: Bool){
    count = 0
    _ = displayUpdate()
  }
}

