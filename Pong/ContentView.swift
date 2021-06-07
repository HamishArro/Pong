import SwiftUI
import SpriteKit

struct ContentView: View {
    @AppStorage("bestScore") var bestScore = 0
    @StateObject private var gameScene = GameScene()
    
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
