import SpriteKit

class GameScene: SKScene, SKPhysicsContactDelegate, ObservableObject {
    @Published var score = 0
    @Published var isGameOver = false
    @Published var level = 1
    
    override func didMove(to view: SKView) {
        self.size = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        scene?.scaleMode = .fill
        
        backgroundColor = .black
        
        let border = SKPhysicsBody(edgeLoopFrom: frame)
        border.friction = 0
        physicsBody = border
    }
    
    func makeBall() {
        //
    }
    
    func makeBricks() {
        //
    }
}

