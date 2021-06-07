import SpriteKit

class GameScene: SKScene, SKPhysicsContactDelegate, ObservableObject {
    @Published var score = 0
    @Published var isGameOver = false
    @Published var level = 1
    
    let ball = SKShapeNode(circleOfRadius: CGFloat(12))
    let paddle = SKSpriteNode(color: SKColor(.white), size: CGSize(width: 120, height: 16))
    let floor = SKSpriteNode(color: SKColor(.clear), size: CGSize(width: UIScreen.main.bounds.width, height: 20))
    
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
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else {return}
        let location = touch.location(in: self)
        paddle.position = CGPoint(x: location.x, y: 40)
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

struct Row {
    let colour: UIColor
    let positionY: CGFloat
}

