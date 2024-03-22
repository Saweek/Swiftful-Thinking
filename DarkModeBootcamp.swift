/*
    DarkModeBootcamp.swift
*/

import SwiftUI

struct DarkModeBootcamp: View {

    @Environment (\.colorScheme) var colorScheme
    var body: some View {
        NaviagtionView{
            ScrollView{
                VStack (spacing: 20)
                {
                    Text("This color is primary")
                        .foregroundColor(.primary)
                    Text("This color is Secondery")
                        .foregroundColor(.secondary)
                    Text("This color is Black")
                        .foregroundColor(.black)
                    Text("This color is white")
                        .foregroundColor(.white)
                    Text("This color is Red")
                        .foregroundColor(.red)

                    //here you can use color made manually in Assets
                    Text("This color is glibally adaptive!!")

                    //
                    Text("This color is locally adaptive!")
                        .foregroundColor(colorScheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
    }
}

struct DarkModeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DarkModeBootcamp()
    }
}
