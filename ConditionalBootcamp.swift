/*
    ConditionalBootcamp.swift
*/

import SwiftUI

struct ConditionalBootcamp: View {

    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false

    var body: some View {
        VStack (spacing: 20)
        {

            Button("IS LOADING: \(isLoading.description)") {
                isLoading.toggle()
            }

            if isLoading {
                ProgressView()
            }

            
            // Button("Circle Button: \(showCircle.description)") {
            //     showCircle.toggle()
            //     // Button.toggle is a command that toggles a bool variable. So you dont need to write for true and false. Based on the income it will do everything by itself.
            // }

            // Button("Rectangle Button: \(showRectangle.description)") {
            //     showRectangle.toggle()
            // }

            // if showCircle {
            //     Circle()
            //         .frame(width:100, height:100)
            // }
            
            // if showRectangle {
            //     Rectangle()
            //         .frame(width:100, height:100)
            // }

            // if showCircle || showRectangle {
            //     RoundedRectangle(cornerRadius:25)
            //         .frame(width:100, height:100)
            // }

            // Spacer()
        }
    }
}

struct ConditionalBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBootcamp()
    }
}
