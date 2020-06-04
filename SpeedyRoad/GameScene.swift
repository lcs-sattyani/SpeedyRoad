//
//  GameScene.swift
//  SpeedyRoad
//
//  Created by Attyani, Sawsan on 2020-05-26.
//  Copyright © 2020 Attyani, Sawsan. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    // MARK: Properties
    var selectedCharacter: Int = 0  // 1 == strawberry, 2 == mushroom, 3 == tomato
    var hero = SKSpriteNode()
    
    // MARK: Methods
    
    override func didMove(to view: SKView) {
        
        
        backgroundColor = SKColor.blue
        
        // Show title
        let title = SKLabelNode(fontNamed: "Big Caslon Medium")
        title.color = .white
        title.text = "Game Scene"
        title.fontSize = 64
        title.position = CGPoint(x: size.width / 2, y: size.height - 100)
        addChild(title)
        
        // Set the hero to the appropriate character
        switch selectedCharacter {
        case 1:
            hero = SKSpriteNode(imageNamed: "strawberry")
        case 2:
            hero = SKSpriteNode(imageNamed: "mushroom")
        case 3:
            hero = SKSpriteNode(imageNamed: "tomato")
        default:
            break
        }
        hero.position = CGPoint(x: size.width / 4 * 2, y: size.height / 2)
        addChild(hero)
        let quadruple = SKAction.scale(by: 4, duration:0)
        hero.run(quadruple)
        
        
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
