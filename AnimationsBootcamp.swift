/*
    AnimationsBootcamp.swift

withAnimation(_ body:)
withAnimation(_ animation:, _ body:)

body has these options:
    .none
    .some
    .default
    .easeIn
    .easeInOut
    .easeOut
    .linear
*/

import SwiftUI

struct AnimationsBootcamp: View {

    @State var isAnimated: Boll = false

    var body: some View {
        VStack
        {
            Button("Button") {
                withAnimation(
                    Animation.default
                        .repeatForever()
                ) {
                    isAnimated.toggle()
                }
            }

            Spacer()

            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width:isAnimated ? 100 : 300, 
                    height:isAnimated ? 100 : 300)
                .offset(y:isAnimated ? 300 : 0)
                .animation ( // anotehr way of doing animation
                    Animation.default
                        .repeatForever()
                )
            
            Spacer()
        }
    }
}

struct AnimationsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationsBootcamp()
    }
}
