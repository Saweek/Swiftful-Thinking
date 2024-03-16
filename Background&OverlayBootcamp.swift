/*
    Background&OverlayBootcamp.swift

    Stuck of backgrounds go behind eachother
    Stuck of Overlays go in front of each other
*/

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {

        // B A C K G R O U N D S
        Text("Hello, World!")
            .background(
                // Color.red
                // LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .traling)
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .traling))
                    .frame(width:100, height:100, alignment: .center)
            )
            .background(
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red]), startPoint: .leading, endPoint: .traling))
                    .frame(width:120, height:120, alignment: .center)
            )
        

        // O V E R L A Y S
        Circle()
            .fill(Color.pink)
            .frame(width:100, height:100)
            .overlay(
                Text("1")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
            )
            .background(
                Circle()
                    .fill(Color.purple)
                    .frame(width:110, height:110)
            )


        // Backgruond's And Overlay's Alignment
        Rectangle()
            .frame(width:100, height:100)
            .overlay(
                Rectangle(),
                    .fill(Color.blue)
                    .frame(width:50, height:50)
                alignment: .topleading
            )
            .background(
                Rectangle(),
                    .fill(Color.red)
                    .frame(width:150, height:150)
                alignment: .bottomTrailing
            )


        // E X A M P L E S   where to use
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(Color.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(
                                colors: [
                                    Color.purple, 
                                    Color.blue
                                ]
                            ), 
                            startPoint: .topleading, 
                            endPoint: .bottomTrailing
                        )
                    )
                    .frame(width:100, height:100)
                    .shadow(
                        color: .purple,
                        radius: 10
                        x: 0.0
                        y: 10
                    )
                    .overlay(
                        Circle(),
                            .fill(Color.blue)
                            .frame(width:35, height:35)
                            .overlay(
                                Text("5")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            )
                            .shadow(
                                color: .purple,
                                radius: 10
                                x: 0.0
                                y: 10
                            )
                        alignment: .bottomTrailing
                    )
            )
    }
}

struct BackgroundAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootcamp()
    }
}
