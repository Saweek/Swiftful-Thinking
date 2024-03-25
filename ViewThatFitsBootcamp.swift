/*
    ViewThatFitsBootcamp.swift
*/

import SwiftUI
struct ViewThatFitsBootcamp: View {

    var body: some View {
        ZStack
        {
            Color.red.ignoresSafeArea()

            ViewThatFits(in:) { // is going to render only one of them the first that fits

                // this is the order

                // if this one does not fit inside of the box
                Text("This is some text that i would like to display to the user!")

                // jump to this, if this one does not fit inside of the box
                Text("This is some text that i would like to display")

                // jump to this 
                Text("This is some text that")
            }
        }
        .frame(height: 300)
        .padding(16)
    }
}

struct ViewThatFitsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewThatFitsBootcamp()
    }
}