/*
    SwipeActionBootcamp.swift
*/

import SwiftUI
struct SwipeActionBootcamp: View {

    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]

    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                // $0 makes no need to write "fruit in"
                    .swipeActions(edge: .trailing, 
                    allowsFullSwipe: true) {
                        Button("Archive") {}
                            .tint(.green)

                        Button("Save") {}
                            .tint(.blue)

                        Button("Junk") {}
                            .tint(.black)
                    }
                    .swipeActions(edge: .leading, 
                    allowsFullSwipe: true) {
                        Button("Share") {}
                            .tint(.yellow)
                    }
            }
        }
    }
}

struct SwipeActionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SwipeActionBootcamp()
    }
}