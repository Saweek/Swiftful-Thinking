/*
    TabViewBootcamp.swift
*/

import SwiftUI

struct TabViewBootcamp: View {

    @State var selectedTab: Int = 0

    let icons: [String] = [
        "heart.fill", "globe", "house.fill", "person.fill"
    ]
    var body: some View {
        // another way
        TabView {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaleToFit()
                    .background(Color.red)
                    .padding(30)
            }
        }
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())

        // usual way of doing
        TabView(selection: $selectedTab) {
            HomeView(selectedTab: $selectedTab)
            .tabItem{
                Image(systemName: "house.fill")
                Text("Home")
            }
            .tag(0)
            
            Text("Browser Tab")
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }
                .tag(1)

            Text("Profile")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .tag(2)
        }
        .accentColor(.red)
    }
}

struct TabViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootcamp()
    }
}

struct HomeView: View {

    @Binding var selectedTab: Int
    var body: some View {
        ZStack
        {
            Color.red.ignoresSafeArea()
            VStack
            {
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundColor(.white)

                Button(action: {
                    selectedTab = 2
                }, label: {
                    Text("Go to Profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10)
                })
            }
        }
    }
}