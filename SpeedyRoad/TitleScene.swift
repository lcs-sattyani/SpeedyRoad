//
//  TitleScene.swift
//  SpeedyRoad
//
//  Created by Attyani, Sawsan on 2020-05-26.
//  Copyright © 2020 Attyani, Sawsan. All rights reserved.
//

import SpriteKit
import GameplayKit

class TitleScene: SKScene {
    
     let strawberry = SKSpriteNode(imageNamed: "strawberry")
    override func didMove(to view: SKView) {
        
        
        backgroundColor = SKColor.black
        
        
        let title = SKLabelNode(fontNamed: "Big Caslon Medium")
        title.color = .white
        title.text = "Fast Food"
        title.fontSize = 64
        title.position = CGPoint(x: size.width / 2, y: size.height / 2)
        addChild(title)
        
       
        
        
      strawberry.position = CGPoint(x: 45, y: 200)
        strawberry.zPosition = 10
        addChild(strawberry)

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
        // 1
        let characterScene = CharacterScene(size: size)
        characterScene.scaleMode = scaleMode
        // 2
        let reveal = SKTransition.flipHorizontal(withDuration: 0.5)
        // 3
        view?.presentScene(characterScene, transition: reveal)


    }
    
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
