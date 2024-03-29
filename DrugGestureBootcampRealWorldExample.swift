/*
    DrugGestureBootcampRealWorldExample.swift
*/

import SwiftUI
struct DrugGestureBootcampRealWorldExample: View {

    @State var startingOffsetY: CGFloat = UIScreen.main.bounds.height * 0.85
    @State var currentDragOffsetY: CGFloat = 0
    @State var endingOffsetY: CGFloat = 0

    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()

            MySignUpView()
                .offset(y: startingOffsetY)
                .offset(y: currentDragOffsetY)
                .offset(y: endingOffsetY)
                .gesture(
                    DragGesture()
                    .onChanged {value in
                        withAnimation(.spring()) {
                            currentDragOffsetY = value.translation.height
                        }
                    }
                    .onEnded { value in

                        
                        withAnimation(.spring()) {
                            if currentDragOffsetY <= -150 {
                                endingOffsetY = -startingOffsetY
                                // currentDragOffsetY = 0
                            } else if endingOffsetY != 0 && currentDragOffsetY > 150 {
                                endingOffsetY = 0
                                // currentDragOffsetY = 0
                            } else {
                                // currentDragOffsetY = 0
                            }
                            // becaus we use currentDragOffsetY = 0 all thre time, we just take it out of the if statment to make our code cleaner
                            currentDragOffsetY = 0
                        }
                    }
                )
        }
        .ignoresSafeArea(.bottom)
    }
}

struct MySignUpView: View {
    
    var body: some View {
        VStack(spacing: 20) {
            Image("chevron.up")
                .pading(.top)
            Text("Sign Up")
                .font(.headline)
                .fontWeight(.semibold)

            Image(system: "flam.fill")
                .resizable()
                .scaleToFit()
                .frame(width:100, height:100)

            Text("This is the description for our app. This is my favorite SwiftUI course and I recommend all of my friends to subscribe to Swiftful thinking!")
                .multilineTextAlignment(.center)

            Text("CREATE AN ACCOUNT")
                .foregroundColor(.white)
                .font(.headline)
                .padding()
                .padding(.horizontal)
                .background(Color.balck.cornerRadius(10))

            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(30)
    }
}

struct DrugGestureBootcampRealWorldExample_Previews: PreviewProvider {
    static var previews: some View {
        DrugGestureBootcampRealWorldExample()
    }
}