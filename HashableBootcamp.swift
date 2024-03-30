/*
    HashableBootcamp.swift

Idenefiable - has id
Hashable - has not explicit id
*/

import SwiftUI

struct MyCustomModel: Hashable {
    let title: String
    // let subtitle: String

    func hash(into hasher: inout Hasher) {
        hash.combine(title /* + subtitle */)
    }
}

struct HashableBootcamp: View {

    let data: [MyCustomModel] = [
        MyCustomModel(title: "ONE")
        MyCustomModel(title: "TWO")
        MyCustomModel(title: "THREE")
        MyCustomModel(title: "FOUR")
        MyCustomModel(title: "FIVE")
    ]

    var body: some View {
        ScrollView {
            VStack(spacing: 40) {
                ForEach(data, id: \.self) {item in
                    Text(item.title).font(.headline)
                }
            }
        }
    }
}

struct HashableBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HashableBootcamp()
    }
}