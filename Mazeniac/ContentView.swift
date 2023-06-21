//
//  ContentView.swift
//  Mazeniac
//
//  Created by Allicia Viona Sagi on 21/06/23.
//

import SwiftUI
import SpriteKit

enum Directions {
    case up
    case down
    case left
    case right
    case none
}

struct ContentView: View {
    
    @State var moveTo: Directions = .none
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 0)
            SpriteView(scene: GameScene($moveTo))
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)
            Spacer()
                .frame(height: 0)
            GamePad(moveTo: $moveTo)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
