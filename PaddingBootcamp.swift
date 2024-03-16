/*
    PaddingBootcamp.swift
*/

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
        VStack (alignment: .leading) {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
                /*
                    .padding()

                    Has 4 overloads:
                        .padding() - using default padding

                        .padding(insets: EdgeInsets) - Adds a different padding amount to each edge of this view.

                        .padding(length: CGFloat) - Adds a specific padding amount to each edge of this view.

                        .padding(edges: Esge.Set, length: CGFloat?) - Adds an equal padding amount to specific edges of this view.
                */
            
            Text("This is the description of waht we are going to do on the screen. It is multiple lines and we will align the text to the leading edge.")

        }
        .padding()
        .padding(.vertical, 30)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: Color.black.opacity(0.3),
                    radius: 10,
                    x: 0.0, y:10
                )
        )
        .padding(.horizontal, 10)
    }
}

struct PaddingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingBootcamp()
    }
}
