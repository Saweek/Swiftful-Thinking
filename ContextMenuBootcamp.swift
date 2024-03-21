/*
    ContextMenuBootcamp.swift

When you tap & hold on an item and context menu pops up.
*/

import SwiftUI

struct ContextMenuBootcamp: View {

    @State var backgroudColor: Color = .blue
    var body: some View {
        VStack (alignment: .leading, spacing: 10)
        {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thimking")
                .font(.headline)
            Text("How to use context menu?")
                .font(.subheadTitle)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroudColor).cornerRadius(30)
        .contextMenu(menuItems: {
            Button(action:{
                backgroudColor = .yellow
            }, label: {
                Label("Share Post", systemImage: "flame.fill")
            })
            
            Button(action:{
                backgroudColor = .red
            }, label: {
                Text("Report")
            })

            Button(action:{
                backgroudColor = .green
            }, label: {
                HStack
                {
                    Text("Like")
                    Image(systemName: "heart.fill")
                }
            })
        })

        // there are 2 overloads:
        // contextMenu(_ contextMenu:)
        // contextMenu(menuItems: () -> View) -> View
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
