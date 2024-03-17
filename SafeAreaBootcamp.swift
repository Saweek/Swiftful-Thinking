/*
    SafeAreaBootcamp.swift
*/

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {

        // example 1
        ZStack
        {
            //background
            Color.blue
                .edgesIgnoringSafeArea(.all)

            // foreground
            Text("Hello, World!")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.red)
                .edgesIgnoringSafeArea(.) // ignor safe areas
                // .all
                // .bottom
                // .horizontal
                // .leading
                // .top
                // .trailing
                // .vertical
        }


        // example 2
        ScrollView {
            VStack
            {
                Text("Title Goes Here!")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)

                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius:25.0)
                        .fill(Color.white)
                        .frame(height:150)
                        .shadow(radius: 10)
                        .padding(10)
                }
            }
        }
        .background(
            Color.blue
                // .edgesIgnoringSafeArea(.all)  //old
                .ignorSafeArea()
                /*
                    as default value .all is set, but if you want to specify an edge, then use:
                        (edges: )
                */
        ) // only background will ignor safe area
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
