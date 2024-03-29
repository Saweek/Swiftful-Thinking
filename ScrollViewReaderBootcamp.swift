/*
    ScrollViewReaderBootcamp.swift
*/

import SwiftUI
struct ScrollViewReaderBootcamp: View {

    @State var textFieldText: String = ""
    @State var scrollToIndex: Int = 0

    var body: some View {
        VStack
        {
            TextField("Enter a number here..", text: $textFieldText)
                .frame(height: 55)
                .border(Color.gray)
                .padding(.horrizontal)
                .keyboardType(.numberPad)

            Button("Click herre to go to #30") {
                withAnimation(.spring()) {

                    if let index = Int(textFieldText) {
                        scrollToIndex = index
                    }
                    // proxy.scrollView(30, anchor: .top | .center | .bottom)
                }
            }
        }
            ScrollView {
                ScrollViewReader { proxy in

                    
                    ForEach(0..<50) { index in
                        Text("This is item \(index)")
                            .font(.headline)
                            .frame(height: 200)
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(radius: 10)
                            .padding()
                            .id(index)
                    }
                    .omChange(of: scrollToIndex) { value in
                        withAnimation(.spring()) {
                            proxy.scrollTo(value, anchor: nil)
                        }
                    }
                }
            }
    }
}

struct ScrollViewReaderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewReaderBootcamp()
    }
}