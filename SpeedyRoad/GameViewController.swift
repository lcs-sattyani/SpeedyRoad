//
//  GameViewController.swift
//  SpeedyRoad
//
//  Created by Attyani, Sawsan on 2020-05-26.
//  Copyright © 2020 Attyani, Sawsan. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let scene =
            TitleScene(size:CGSize(width: 2048, height: 1536))
        let skView = self.view as! SKView
        skView.showsFPS = true
        skView.showsNodeCount = true
        skView.ignoresSiblingOrder = true
        scene.scaleMode = .aspectFill
        skView.presentScene(scene)
    }
    

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
