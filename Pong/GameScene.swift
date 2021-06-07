import SpriteKit

class GameScene: SKScene, SKPhysicsContactDelegate, ObservableObject {
    @Published var score = 0
    @Published var isGameOver = false
    @Published var level = 1
    
    let ball = SKShapeNode(circleOfRadius: CGFloat(12))
    let paddle = SKSpriteNode(color: SKColor(.white), size: CGSize(width: 120, height: 16))
    let floor = SKSpriteNode(color: SKColor(.white), size: CGSize(width: UIScreen.main.bounds.width, height: 20))
    
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
        ball.name = "ball"
        ball.fillColor = .white
        ball.position = CGPoint(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 1.6)
        ball.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 24, height: 24))
        ball.physicsBody!.allowsRotation = false
        ball.physicsBody!.friction = 0
        ball.physicsBody!.restitution = 1
        ball.physicsBody!.linearDamping = 0
        ball.physicsBody!.contactTestBitMask = ball.physicsBody!.collisionBitMask
        addChild(ball)
        ball.physicsBody!.applyImpulse(CGVector(dx: 8, dy: -8))
    }
    
    func makePaddle() {
        paddle.name = "paddle"
        paddle.position = CGPoint(x: UIScreen.main.bounds.width / 2, y: 40)
        paddle.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 24, height: 24))
        paddle.physicsBody!.allowsRotation = false
        paddle.physicsBody!.friction = 0
        paddle.physicsBody!.restitution = 1
        paddle.physicsBody!.isDynamic = false
        paddle.physicsBody!.contactTestBitMask = paddle.physicsBody!.collisionBitMask
        addChild(paddle)
    }
    
    func makeBricks() {
        //
    }
    
    func makeFloor() {
        floor.name = "floor"
        floor.position = CGPoint(x: UIScreen.main.bounds.width / 2, y: 0)
        floor.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 24, height: 24))
        floor.physicsBody!.allowsRotation = false
        floor.physicsBody!.isDynamic = false
        floor.physicsBody!.contactTestBitMask = floor.physicsBody!.collisionBitMask
        addChild(floor)
    }
}

struct Row {
    let colour: UIColor
    let positionY: CGFloat
}

