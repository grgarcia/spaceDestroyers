//
//  Bullet.swift
//  Space Destroyers
//
//  Created by Graciela Garcia on 11/15/18.
//  Copyright © 2018 Graciela Garcia. All rights reserved.
//

import UIKit
import SpriteKit

class Bullet: SKSpriteNode {

  init(imageName: String, bulletSound: String?) {
    let texture = SKTexture(imageNamed: imageName)
    super.init(texture: texture, color: SKColor.clear, size: texture.size())
    if(bulletSound != nil){
      run(SKAction.playSoundFileNamed(bulletSound!, waitForCompletion: false))
    }
  }
  
  required init?(coder aDecoder: NSCoder) {
    // SKSpriteNode conforms to NSCoding, which requires we implement this, but we can just call super.init()
    super.init(coder: aDecoder)
  }
  
}
