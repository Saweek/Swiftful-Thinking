/*
    SafeAreaInsetsBootcamp.swift
*/

import SwiftUI
struct SafeAreaInsetsBootcamp: View {

    var body: some View {
        NaviagtionStack {
            List(0..<10) {
                Rectangle()
                    .frame(width:300)
            }
            .navigationTitle("Safe Area Insets")
            .safeAreaInsets(edge: .bottom, alignment: .leading, spacing: nil) {
                Text("Hi")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.yellow)
                    .clipShape(Circle())
                    .padding()
            }
        }
    }
}

struct SafeAreaInsetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaInsetsBootcamp()
    }
}