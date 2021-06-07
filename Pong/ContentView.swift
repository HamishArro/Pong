import SwiftUI
import SpriteKit

struct ContentView: View {
    @AppStorage("bestScore") var bestScore = 0
    @StateObject private var gameScene = GameScene()
    
    var body: some View {
        ZStack {
            SpriteView(scene: gameScene)
            VStack(alignment: .leading) {
                Text("Level: 1")
                    .font(.system(size: 12, weight: .heavy, design: .rounded))
                    .foregroundColor(.white)
            }
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
