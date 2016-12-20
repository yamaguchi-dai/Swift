//
//  settingViewController.swift
//  Timer
//
//  Created by USER on 2016/12/16.
//  Copyright © 2016年 USER. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
  
  let settingArray : [Int] = [10,20,30,40,50,60]
  
  let settingkey = "timer_value"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    timerSettingPicker.delegate = self
    timerSettingPicker.dataSource = self
    
    let settings = UserDefaults.standard
    let timerValue = settings.integer(forKey: settingkey)
    
    for row in 0..<settingArray.count {
      if settingArray[row] == timerValue {
        timerSettingPicker.selectedRow(row, inComponent: 0,animated: true)
      }
    }
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  /*
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   // Get the new view controller using segue.destinationViewController.
   // Pass the selected object to the new view controller.
   }
   */
  @IBOutlet weak var timerSettingPicker: UIPickerView!
  
  @IBAction func decisionButtonAction(_ sender: Any) {
  }
  
  func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
  }
  
  func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return settingArray.count
  }
}
