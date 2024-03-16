/*
    InitializerBootcamp.swift
*/

import SwiftUI

// Here we are initialize InitializerBootcamp
struct InitializerBootcamp: View {

    let backgroundColor: Color
    let count: Int
    let title: String

    init(count: Int, fruit: Fruit) {
        self.count = count

        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        } else {
            self.title = "Orangs"
            self.backgroundColor = .orange
        }
    }

    enum Fruit {
        case apple
        case orange
    }

    var body: some View {
        VStack (sapcing: 12)
        {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text("Apples")
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width:150, height:150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitializerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HStack
        {
            InitializerBootcamp(count: 100, fruit: .apple)
            InitializerBootcamp(count: 46, fruit: .orange)
        }
    }
}
