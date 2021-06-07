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
        
        physicsWorld.gravity = CGVector(dx: 0, dy: 0)
        physicsWorld.contactDelegate = self
        
        makeBall()
        makePaddle()
        makeBricks()
        makeFloor()
    }
    
    func makeBall() {
        //
    }
    
    func makePaddle() {
        //
    }
    
    func makeBricks() {
        //
    }
    
    func makeFloor() {
        //
    }
}

