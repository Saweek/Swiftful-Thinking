/*
    MultipleSheetsBootcamp.swift
*/

import SwiftUI

// 1. using binding
// 2. use multiple.sheets
// 3. use $item


// MARK: USING BINDING

struct RandomModel: Identifiable {
    let id = UUID().uuidString
    let title: String
}

struct MultipleSheetsBootcamp: View {

    @State var selectedModel = RandomModel(title: "STARTING TITLE")
    @State var showSheet: Bool = false

    var body: some View {
        VStack(spacing: 20) {
            Button("Button 1") { selectedModel = RandomModel(title: "ONE")
                showSheet.toggle()}
            Button("Button 2") { selectedModel = RandomModel(title: "TWO")
                showSheet.toggle()}
        }
        .sheet (isPresented: $showSheet) { NextScreen(selectedModel: $selectedModel) }
    }
}

struct NextScreen: View {

    @Binding var selectedModel: RandomModel

    var body: some Veiw {
        Text(selectedModel.title)
            .font(.largeTitle)
    }
}

struct MultipleSheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        MultipleSheetsBootcamp()
    }
}










// MARK: USING MULTIPLE SHEETS
/* It will not work only if one sheet is child of another, if they are on the same level, everything is going to work */

struct RandomModel: Identifiable {
    let id = UUID().uuidString
    let title: String
}

struct MultipleSheetsBootcamp: View {

    @State var selectedModel = RandomModel(title: "STARTING TITLE")
    @State var showSheet: Bool = false
    @State var showSheet2: Bool = false

    var body: some View {
        VStack(spacing: 20) {
            Button("Button 1") { showSheet.toggle() }
                .sheet(isPresented: $showSheet) { NextScreen(selectedModel: RandomModel(title: "ONE")) }

            Button("Button 2") { showSheet2.toggle() }
                .sheet(isPresented: $showSheet2) { NextScreen(selectedModel: RandomModel(title: "TWO")) }
        }
    }
}

struct NextScreen: View {

    let var selectedModel: RandomModel

    var body: some Veiw {
        Text(selectedModel.title)
            .font(.largeTitle)
    }
}

struct MultipleSheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        MultipleSheetsBootcamp()
    }
}












// MARK: USING $ITEM

struct RandomModel: Identifiable {
    let id = UUID().uuidString
    let title: String
}

struct MultipleSheetsBootcamp: View {

    @State var selectedModel: RandomModel? = nil

    var body: some View {

        // example of flexablity in this way

        // ScrollView {
        //     VStack (spacing: 20) {
        //         ForEach(0..<50) {index in
        //             Button("Button \(index)") { selectedModel = RandomModel(title: "\(index)") }
        //         }
        //     }
        //     .sheet(item: $selectedModel) { model in
        //         NextScreen(selectedModel: model)
        //     }
        // }
        
        VStack(spacing: 20) {
            Button("Button 1") { selectedModel = RandomModel(title: "ONE") }

            Button("Button 2") { selectedModel = RandomModel(title: "TWO") }
        }
        .sheet(item: $selectedModel) { model in
            NextScreen(selectedModel: model)
        }
    }
}

struct NextScreen: View {

    let var selectedModel: RandomModel

    var body: some Veiw {
        Text(selectedModel.title)
            .font(.largeTitle)
    }
}

struct MultipleSheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        MultipleSheetsBootcamp()
    }
}