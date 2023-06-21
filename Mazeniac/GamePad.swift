//
//  GamePad.swift
//  Mazeniac
//
//  Created by Allicia Viona Sagi on 22/06/23.
//

import SwiftUI

struct GamePad: View {
    
    @Binding var moveTo: Directions
    
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .fill(.pink)
                HStack {
                    VStack {
                        // Add button up
                        Button{
                            moveTo = .up
                        }label: {
                            Image("btn-up")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 64, height: 64)
                        }
                        HStack {
                            // Add button left
                            Button {
                                moveTo = .left
                            } label: {
                                Image("btn-left")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 64, height: 64)
                            }
                            Spacer()
                                .frame(width: 64, height: 64)
                            // Add button right
                            Button {
                                moveTo = .right
                            } label: {
                                Image("btn-right")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 64, height: 64)
                            }
                        }
                        // Add button down
                        Button{
                            moveTo = .down
                        }label: {
                            Image("btn-down")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 64, height: 64)
                        }
                    }
                    Spacer()
                        .frame(width: 50)
                    
                    // Add grab button
                    Button {
                        
                    } label: {
                        Image("btn-grab")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 64, height: 64)
                        
                    }
                }
                
            }
        }.ignoresSafeArea()

    }
}

struct GamePad_Previews: PreviewProvider {
    static var previews: some View {
        GamePad(moveTo: .constant(.none))
    }
}
