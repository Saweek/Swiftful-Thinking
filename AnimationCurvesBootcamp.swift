/*
    AnimationCurvesBootcamp.swift
*/

import SwiftUI

struct AnimationCurvesBootcamp: View {

    @State var isAnimating: Bool = fallse
    let timing: Double =  10.0
    var body: some View {
        VStack
        {
            Button("Button") {
                isAnimating.toggle()

            }

            RoundedRectangle(cornerRadius:20)
                .animation(
                    Animation.linear(duration: timing)
                    // we have .type of animation, but we also have 
                    // .type(duration:)
                )
                .frame(width:isAnimating ? 350 :  50, height: 100)


            RoundedRectangle(cornerRadius:20)
                .animation(
                    Animation.easeIn(duration: timing)
                )
                .frame(width:isAnimating ? 350 :  50, height: 100)


            RoundedRectangle(cornerRadius:20)
                .animation(
                    Animation.easeInOut(duration: timing)
                )
                .frame(width:isAnimating ? 350 :  50, height: 100)


            RoundedRectangle(cornerRadius:20)
                .animation(
                    Animation.easeOut(duration: timing)
                )
                .frame(width:isAnimating ? 350 :  50, height: 100)

            // Spring animation
            RoundedRectangle(cornerRadius:20)
                .animation(
                    .spring(
                        response: 0.5,
                        dampingFraction: 0.7,
                        blendDuration: 1.0
                    )
                )
                .frame(width:isAnimating ? 350 :  50, height: 100)
        }
    }
}

struct AnimationCurvesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationCurvesBootcamp()
    }
}
