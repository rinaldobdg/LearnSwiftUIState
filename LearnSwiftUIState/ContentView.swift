//
//  ContentView.swift
//  LearnSwiftUIState
//
//  Created by Rinaldo on 17/04/26.
//

import SwiftUI

struct ContentView: View {
    @State private var isPlaying = false
    
    var body: some View {
        Button {
            // switch between the play and stop button
            isPlaying.toggle()
        } label: {
            Image(systemName: isPlaying ? "stop.circle.fill" : "play.circle.fill")
                .font(.system(size: 150))
                .foregroundColor(isPlaying ? .red : .green)
        }
    }
}

struct CounterView: View {
    @State private var counter = 1
    
    var body: some View {
        Button {
            // switch between the play and stop button
            counter += 1
        } label: {
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(.red)
                .overlay {
                    Text("\(counter)")
                        .font(.system(size: 100, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                }
           
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        CounterView()
    }
}
