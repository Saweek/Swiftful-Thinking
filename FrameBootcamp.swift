/*
    FrameBootcamp.swift

    Its really important in which order you stuck all the properties, and the way how you stuck frames. What is INSIDE of a frame is everything before, but what IS a frame is everything after.
*/

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text("Hello, World!")
            .background(Color.red) // Setting color for the text frame
            .frame(height: 100) // creating a frame with a height 100
            .background(Color.orange, alignment: .top) //setting color for the frame we just created
            .frame(width: 150)
            .background(Color.purple)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.pink)
            .frame(height:400)
            .background(Color.green)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(Color.yellow)
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}
