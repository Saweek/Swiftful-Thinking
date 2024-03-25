/*
    BadgeBootcamp.swift
*/

// ONLY List and Tabview

import SwiftUI
struct BadgeBootcamp: View {

    var body: some View {
        TabView {
            Color.red
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("HELLO")
                }
                .badge(2)

            Color.green
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("HELLO")
                }  

            Color.blue
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("HELLO")
                }
        }
    }
}

struct BadgeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgeBootcamp()
    }
}