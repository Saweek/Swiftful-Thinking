/*
    NativePopoverBootcamp.swift
*/

import SwiftUI
struct NativePopoverBootcamp: View {

    @State private var showPopover: Bool = false
    @State private var feedbackOption: [String] = []

    var body: some View {
        ZStack
        {
            Color.gray.ignoresSafeArea()

            Button("CLICK ME") {
                showPopover.toggle()
            }
            .padding(20)
            .background(Color.yellow)
            .popover(isPresented: $showPopover, attachmentAnchor: .point(.center)) {
                VStack (alignment: .leading, spacing: 12, content: {
                    ForEach(feedbackOption, id: \.self) { option in
                        Button(option) {

                        }

                        if option != feedbackOption.last {
                            Divider()
                        }
                    }
                })
                    .padding(20)
                    .presentationCompactAdaptation(.popover)
            }
            // .popover(isPresented: $showPopover) {
                // Text("Hello, subscribers!")
                //     .padding()
                //     .presentationCompactAdaptation(.popover)
            // }
        }
    }
}

struct NativePopoverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NativePopoverBootcamp()
    }
}