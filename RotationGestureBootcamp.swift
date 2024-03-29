/*
    RotationGestureBootcamp.swift
*/

import SwiftUI
struct RotationGestureBootcamp: View {

    @State var angle: Angle = Angle(degrees: 0)

    var body: some View {
        Text("Hello, World!")
            .padding(50)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(10)
            .rotationEffect(.)
            .gesture (
                RotationGesture()
                    .onChanged { value in
                        angle = value
                        // when the person does roation it save it into angle var
                    }
                    .onEnded { value in
                        withAnimation(.spring()) {
                            angle = Angle(degrees: 0)
                            // and at the end, when person releases their fingers, it will reset the vaule to 0
                        }
                    }
            )
    }
}

struct RotationGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        RotationGestureBootcamp()
    }
}