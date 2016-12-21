//
//  GameScene.swift
//  omikuji
//
//  Created by USER on 2016/12/21.
//  Copyright © 2016年 USER. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {

  let mySprite = SKSpriteNode(imageNamed: "omikuji.png")
  let btnSprite = SKSpriteNode(imageNamed: "button.png")
  
  override func didMove(to view: SKView) {
    self.backgroundColor=SKColor.white
    mySprite.position = CGPoint(x: 375,y: 900)
    addChild(mySprite)
    
    
  }

}
