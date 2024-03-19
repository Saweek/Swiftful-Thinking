/*
    NavigationViewBootcamp.swift
*/

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {

                NavigationLink("Hello, World!", destination: MyOtherScreen())

                Text("Hellow, World!")
                Text("Hellow, World!")
                Text("Hellow, World!")
            }
            .navigationTitle("All Inboxes")
            .navigationBarTitleDisplayMode(.large)
            .navigationVarHidden(true)

            // how to add your own buttons in navigation view
            .naviagtionBarItems(
                leading: 
                    HStack
                    {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    }
                trailing: 
                    NaviagtionLink(
                        destination: MyOtherScreen(),
                        label: {
                            Image(systemName: "gear")
                        }
                        .accentColor(.red)
                    )
                )
            // thre options
            // only on the left side (leading:)
            // only on the right (trailing:)
            // bot sides (leading:trailing:)
        }
    }
}

struct MyOtherScreen: View {
    var body: some View {
        ZStack
        {
            Color.green.ignoresSafeArea()
                .navigationTitle("GreenScreen ")

                // if you wnt to make your own button
                // You need to do .navigationVarHidden(true)
                // and then do the same way as with a sheet
                // @Environment, presentation mode, dismiss...

            NaviagtionLink("Click here", destination: Text("A new Screen "))
        }
    }
}


struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
