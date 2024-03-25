/*
    NaviagtionStackBootcamp.swift
*/

import SwiftUI
struct NaviagtionStackBootcamp: View {

    let fruits = ["apple", "orange", "banana"]

    @State private var stackPath: [String] = []

    var body: some View {
        NavigationView (path: $stackPath){
            ScrollView {
                VStack(spacing: 40) {

                    Button("hehe") {
                        stackPath.append(contentsOf: [
                            "Cocounut", "Watermelon", "Mango"
                        ])
                    }

                    ForEach(fruits, id: \.self) {
                        NavigationLink(value: fruit) {
                            Text(fruit)
                        }
                    }

                    ForEach(0..<10) {x in
                        NavigationLink(value: x) {
                            Text("Click me: \(x)")
                        }
                    }
                }
            }
            .naviagtionTitle("Nav Bootcamp")
            .navigationDestiantion(for: Int.self) { value in
                MySecondScreen(value: value)
            }
            .navigationDestiantion(for: String.self) { value in
                Text("ANOTHER SCREEN: \(value)")
            }
        }
    }
}

struct MySecondScreen: View {
    let value: Int

    init (value: Int) {
        self.value = value
        print("INIT SCREEN: \(value)")
    }

    var body: some View {
        Text("SCREEN: \(value)")
    }
}

struct NaviagtionStackBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NaviagtionStackBootcamp()
    }
}