/*
    TransitionBootcamp.swift

.transitions had multible variables:
    .identity
    .opacity
    .scale
    .slide

And Functions:
    asymmetric
    modifier
    move
    offset
*/

import SwiftUI

struct TransitionBootcamp: View {

    @State var showView: Bool = false
    var body: some View {
        ZStack
        {
            VStack
            {
                Button("Button") {
                    showView.toggle()
                }

                Spacer()
            }

            ZStack (alignment: .bottom)
            {

                if showView {
                    RoundedRectangle(cornerRadius:30)
                        .frame(
                            height:UIScreen.main.bounds.height * 0.5)
                            // UIScreen.main.bounds.height gives us full hieght of the screen. And its uduptive, so you dont need to know exect number.
                        .transition(move(edge: .bottom))
                        .animation(.spring())
                        .transition(AnyTransition.opacity.animation(.easeInOut))
                        .transition(AnyTransition.scale.animation(.easeInOut))
                        .transition(.asymmetric(
                            insertion: .move(edge: .leading), 
                            removal: .move(edge: .bottom)
                        ))
                }
                
                    // .opacity(showView ? 1.0 : 0.0)
                    // .animation(.easeInOut)
                    // this animations are good when they are on the screen already. 
                    
            }
            .ignoresSafeArea(.buttom)
        }
    }
}

struct TransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootcamp()
    }
}
