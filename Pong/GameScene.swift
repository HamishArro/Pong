import SpriteKit

class GameScene: SKScene, SKPhysicsContactDelegate, ObservableObject {
    
    override func didMove(to view: SKView) {
        self.size = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        scene?.scaleMode = .fill
        
        backgroundColor = .black
    }
}

