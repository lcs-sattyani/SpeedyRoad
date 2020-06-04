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
    
    let title = SKLabelNode(fontNamed: "Big Caslon Medium")
    let strawberry = SKSpriteNode(imageNamed: "strawberry")
    let mushroom = SKSpriteNode(imageNamed: "mushroom")
    let tomato = SKSpriteNode(imageNamed: "tomato")

    
    
    override func didMove(to view: SKView) {
        
        
        backgroundColor = SKColor.blue
        
        // Showing the title
        title.color = .white
        title.text = "Character Scene"
        title.fontSize = 64
        title.position = CGPoint(x: size.width / 2, y: size.height - 100)
        addChild(title)
        
        // Add the strawberry
        strawberry.position = CGPoint(x: size.width / 4, y: size.height / 2)
        addChild(strawberry)
        let quadruple = SKAction.scale(by: 4, duration:0)
        strawberry.run(quadruple)

        // Add the mushroom
        mushroom.position = CGPoint(x: size.width / 4 * 2, y: size.height / 2)
        addChild(mushroom)
        mushroom.run(quadruple)

        // Add the tomato
        tomato.position = CGPoint(x: size.width / 4 * 3, y: size.height / 2)
        addChild(tomato)
        tomato.run(quadruple)

        
        
    }
    
    
    
    
    func touchDown(atPoint pos : CGPoint) {
        
    }
    
    
    func touchMoved(toPoint pos : CGPoint) {
        
    }
    
    
    func touchUp(atPoint pos : CGPoint) {
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // Once you know the "play game" label has been tapped
        // Present the "GameScene" scene
        
        // this method is called when the user touches the screen
        guard let touch = touches.first else { return }
        let location = touch.location(in: self)
        let tappedNodes = nodes(at: location)
        
        if tappedNodes.contains(title) {
            // 1
            let gameScene = GameScene(size: size)
            gameScene.scaleMode = scaleMode
            // 2
            let reveal = SKTransition.flipHorizontal(withDuration: 0.5)
            // 3
            view?.presentScene(gameScene, transition: reveal)

        }
        
        
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
