/*
    ToolbarBootcamp.swift
*/

import SwiftUI
struct ToolbarBootcamp: View {

    var body: some View {
        NavigationStack {
            ZStack
            {
                Color.indigo.ignoresSafeArea()

                Text("Hey")
                    .foregroundColor(.white)
            }
            .navigationTitle("Toolbar")
            .toolbar {
                ToolbatItem(placement: .navigationBarLeading) {
                    Image(systemName: "heart.fill")
                }
            }
            .toolbarTitleMenu {
                Button("Screen1") {}
                Button("Screen2") {}
            }
        }
    }
}

struct ToolbarBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarBootcamp()
    }
}