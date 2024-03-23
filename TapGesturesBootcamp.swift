/*
    TapGesturesBootcamp.swift
*/

import SwiftUI

struct TapGesturesBootcamp: View {

    @State var isSelected: Bool = false

    var body: some View {
        VStack (spacing: 40)
        {
            RoundedRectangle(cornerRadius: 25)
                .frame(height: 200)
                .foregroundColor(isSelected ? .green : .red)

            Button(action: {
                isSelected.toggle()
            }, label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(25)
            })

            Text("Tap Gesture")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(25)
                    // .onTapGesture {
                    //     isSelected.toggle()
                    // }
                    .onTapGesture(count: 2) // count - how many times to click
                    {

                    }

            Spacer()
        }
        .padding(40)
    }
}

struct TapGesturesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TapGesturesBootcamp()
    }
}
