//
//  PlayerBullet.swift
//  Space Destroyers
//
//  Created by Graciela Garcia on 11/15/18.
//  Copyright © 2018 Graciela Garcia. All rights reserved.
//

import SpriteKit

class PlayerBullet: Bullet {
  override init(imageName: String, bulletSound:String?){
    super.init(imageName: imageName, bulletSound: bulletSound)
    // more to come once we add some physics to the game...
    self.physicsBody = SKPhysicsBody(texture: self.texture!, size: self.size)
    self.physicsBody?.isDynamic = true
    self.physicsBody?.usesPreciseCollisionDetection = true
    self.physicsBody?.categoryBitMask = CollisionCategories.PlayerBullet
    self.physicsBody?.contactTestBitMask = CollisionCategories.Invader
    self.physicsBody?.collisionBitMask = 0x0
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
}
