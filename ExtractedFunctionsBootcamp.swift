/*
    ExtractedFunctionsBootcamp.swift
*/

import SwiftUI

struct ExtractedFunctionsBootcamp: View {

    @State var backgroundColor: Color = Color.pink

    var body: some View {
        ZStack
        {
            //background
            backgroundColor.ignoresSafeArea()

            //content
            contentLayer
        }
    }

    var contentLayer: some View {
        VStack
            {
                Text("Title")
                    .font(.largeTitle)

                Button(action: {
                    buttonPressed()
                }, label: {
                    Text("PRESS ME!")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding
                        .background(Color.black)
                        .cornerRadius(10)
                })
            }
    }

    func buttonPressed() {
        backgroundColor = Color.yellow
    }
}

struct ExtractedFunctionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionsBootcamp()
    }
}
