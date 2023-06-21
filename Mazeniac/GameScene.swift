//
//  GameScene.swift
//  Mazeniac
//
//  Created by Allicia Viona Sagi on 21/06/23.
//
import SwiftUI
import SpriteKit

class GameScene: SKScene {
    
    @Binding var moveTo: Directions
    
    init(_ moveTo: Binding<Directions>) {
        _moveTo = moveTo
        super.init(size: CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width))
        self.scaleMode = .fill
    }
    
    required init?(coder aDecoder: NSCoder) {
        _moveTo = .constant(.none)
        super.init(coder: aDecoder)
    }
    
    override func didMove(to view: SKView) {
        
        // Add background image to the game
        let backgroundImage = SKSpriteNode(imageNamed: "background")
        backgroundImage.position = CGPoint(x: size.width/2, y: size.height/2)
        backgroundImage.scale(to: size)
        backgroundImage.zPosition = -1
        addChild(backgroundImage)
        
        // Add character to the game
        let character = SKSpriteNode(imageNamed: "look-left--feet-in")
        character.name = "myCharacter"
        character.position = CGPoint(x: size.width-32, y: 32)
        character.scale(to: CGSize(width: 64, height: 64))
        addChild(character)
        
        
    }
    
    override func update(_ currentTime: TimeInterval) {
        switch moveTo {
        case .up:
            guard let playerNode = childNode(withName: "myCharacter") as? SKSpriteNode else { return }
            playerNode.run(SKAction.moveTo(y: playerNode.position.y + 32, duration: 0))
            moveTo = .none
        case .down:
            guard let playerNode = childNode(withName: "myCharacter") as? SKSpriteNode else { return }
            playerNode.run(SKAction.moveTo(y: playerNode.position.y - 32, duration: 0))
            moveTo = .none
        case .left:
            guard let playerNode = childNode(withName: "myCharacter") as? SKSpriteNode else { return }
            playerNode.run(SKAction.moveTo(x: playerNode.position.x - 32, duration: 0))
            moveTo = .none
        case .right:
            guard let playerNode = childNode(withName: "myCharacter") as? SKSpriteNode else { return }
            playerNode.run(SKAction.moveTo(x: playerNode.position.x + 32, duration: 0))
            moveTo = .none
        case .none:
            moveTo = .none
        }

    }
    
    
}
