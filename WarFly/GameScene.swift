//
//  GameScene.swift
//  WarFly
//
//  Created by Андрей on 05.12.2023.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        
        let screenPoint = CGPoint(x: self.size.width / 2, y: self.size.height / 2)
        let background = Background.populateBackground(at: screenPoint)
        background.size = self.size
        self.addChild(background)
        
        let screen = UIScreen.main.bounds
        
        for _ in 1...5 {
            let x: CGFloat = CGFloat(GKRandomSource.sharedRandom().nextInt(upperBound: Int(screen.size.width)))
            let y: CGFloat = CGFloat(GKRandomSource.sharedRandom().nextInt(upperBound: Int(screen.size.height)))
            
            let island = Island.populateSprite(at: CGPoint(x: x, y: y))
            let cloud = Cloud.populateSprite(at: CGPoint(x: x, y: y))
            self.addChild(island)
            self.addChild(cloud)
        }
        
    }
    
}
