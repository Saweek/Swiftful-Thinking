/*
    ResizaableSheetBootcamp.swift
*/

import SwiftUI
struct ResizaableSheetBootcamp: View {

    @State private var showSheet: Bool = false
    @State private var detents: presentationDetent = .large

    var body: some View {
        Button("Click me") {

        }
        .sheet(isPresented: $showSheet) {
            MyNextView()
                .presentationDetents([.medium, .large], selection: $detents)
                // .presentationDetents([.fraction(0.1), .medium, .large])
                // .presentationDetents([.height(800)])
                .presentationDragIndicator(.hidden)
                .interactiveDissmissDisabled()
        }
        .onAppear {
            showSheet = true
        }
    }
}

struct MyNextView: View {

    var body: some View {
        ZStack
        {

            Colo.red.ignoresSafeArea()
            Text("Hello world")
        }
    }
}

struct ResizaableSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ResizaableSheetBootcamp()
    }
}