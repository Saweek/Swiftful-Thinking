/*
    ContentUnavailableViewBootcamp.swift

    This is what you use when there is nothing to show basiclly haha
*/

import SwiftUI
struct ContentUnavailableViewBootcamp: View {

    var body: some View {
        ContentUnavailableView("Some title", systemImage: "heart.fill", description: Text("this is some text"))

        ContentUnavailableView.serach
        // is the only one accessable from the box

        // THAT IS IT. hahaha
    }
}

struct ContentUnavailableViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContentUnavailableViewBootcamp()
    }
}