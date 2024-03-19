/*
    SheetsBootcamp.swift

    !ONLY ONE SHEET OR FULL SCREEN COVER!
    Either, or
*/

import SwiftUI

struct SheetsBootcamp: View {

    @State showSheet: Bool = fasle
    var body: some View {
        ZStack
        {
            Color.green.ignoresSafeArea

            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            })
            .fullScreenCover(isPewsented: $showSheet, content: {
                // NOOOOOO Conditional logic here! I'm serious!!!
                SecondScreen()
            })
            .sheet(isPewsented: $showSheet, content: {
                // NOOOOOO Conditional logic here! I'm serious!!!
                SecondScreen()
            })
        }
    }
}

struct SecondScreen: View {

    // we created a sheet that able to be closed not by draging but by prssing on a button

    @@Environment(\.presentationMode) var presentationMode

    var body: some View{
        ZStack(alignment: .topleading) {
            Color.red.ignoresSafeArea

            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.red)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            })
        }
    }
}

struct SheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBootcamp()
    }
}
