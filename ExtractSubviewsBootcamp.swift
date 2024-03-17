/*
    ExtractedSubviewsBootcamp.swift
*/

import SwiftUI

struct ExtractedSubviewsBootcamp: View {
    var body: some View {
        ZStack
        {
            Color.orange.ignoresSafeArea()

            contantLayer
        }
    }

    var contantLayer: some View {
        HStack {
            myItem(title: "Apples", count: 1, color: .red)
            myItem(title: "Oranges", count: 10, color: .orange)
            myItem(title: "Apples", count: 34, color: .yellow)
        }
    }
}

struct MyItem: View {

    let title: String
    let count: Int
    let color: Color

    var body: some View {
        VStack {
            Text(count)
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}

struct ExtractedSubviewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedSubviewsBootcamp()
    }
}
