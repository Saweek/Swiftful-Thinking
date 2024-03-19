/*
    ListBootcamp.swift


And for the NavigationBarItems that are now deprecated, we should be using toolbar: 
.toolbar {
    ToolbarItem(placement: .navigationBarLeading) {
        EditButton()
    }
    ToolbarItem(placement: .navigationBarTrailing) {
        addButton
    }
}
*/

import SwiftUI

struct ListBootcamp: View {

    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]

    @State var veggies: [String] = [
        "tomato", "potato", "carrot"
    ]
    var body: some View {
        List {
            Section(
                header: Text("Fruits")) {
                    ForEach(fruits, id:\.self) {fruit in
                        Text(fruit.capitalized)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.blue)
                }
                .navigationTitle("Grocery List")
                .navigationBarItems(
                    leading: EditButton(),
                    trailing: addButton())

            Section(header: Text("Veggies")) {
                ForEach(veggies, id:\.self) {veggie in
                        Text(veggie.capitalized)
                    }
            }
        }
        .ListStyle()
    }

    var addButton: some View {
        Button("Add", action: add())
    }

    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }

    func move(indices: IndexSet, toOffset: Int) {
        fruits.move(fromOffset: indices, toOffset: newOffset)
    }

    func add() {
        fruits.appened("Coconut")
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
