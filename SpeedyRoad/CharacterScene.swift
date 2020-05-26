//
//  CharacterScene.swift
//  SpeedyRoad
//
//  Created by Attyani, Sawsan on 2020-05-26.
//  Copyright © 2020 Attyani, Sawsan. All rights reserved.
//

import SpriteKit
import GameplayKit

class CharacterScene: SKScene {
    
    
    override func didMove(to view: SKView) {
        
        
        backgroundColor = SKColor.blue
        
        
        let title = SKLabelNode(fontNamed: "Big Caslon Medium")
        title.color = .white
        title.text = "Character Scene"
        title.fontSize = 64
        title.position = CGPoint(x: size.width / 2, y: size.height / 2)
        addChild(title)
        
        
    }
    
    
    
    
    func touchDown(atPoint pos : CGPoint) {
        
    }
    
    
    func touchMoved(toPoint pos : CGPoint) {
        
    }
    
    
    func touchUp(atPoint pos : CGPoint) {
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
