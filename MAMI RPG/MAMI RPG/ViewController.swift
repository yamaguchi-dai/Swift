//
//  ViewController.swift
//  MAMI RPG
//
//  Created by USER on 2016/12/14.
//  Copyright © 2016年 USER. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  
  
  @IBOutlet weak var result: UILabel!
  
  let bgmpath = Bundle.main.bundleURL.appendingPathComponent("マミタスクエストBGM.mp3")
  var bgmPlayer = AVAudioPlayer()
  
  let atpath = Bundle.main.bundleURL.appendingPathComponent("kick-high1.mp3")
   var atPlayer = AVAudioPlayer()
 
  
  
  var i = 1//攻撃力
  var hp = 47770000//初期HP
  var x = 0
 
  
  


  @IBAction func button(_ sender: Any) {
    hp = hp-i
    result.text = String(hp)+"/47770000"
    //ここでhpにより画像を変えていく
    
    do{
        atPlayer = try AVAudioPlayer(contentsOf: atpath, fileTypeHint: nil)
        atPlayer.play()
    } catch {
      print("エラー")
    }
    
    
    
    
    
    
    do{
      if x  == 0{
      bgmPlayer = try AVAudioPlayer(contentsOf: bgmpath, fileTypeHint: nil)
        bgmPlayer.numberOfLoops = -1
      bgmPlayer.play()
        x = x+1
      }
    } catch {
      print("エラー")
    }
  }

}

