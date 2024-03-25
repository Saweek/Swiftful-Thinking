/*
    NavigationSplitViewBootcamp.swift
*/

import SwiftUI

// It's for big displays

struct NavigationSplitViewBootcamp: View {

    @State private var visibility: NavigationSplitViewVisibility = .all
    @State private var selectedCategory: FoodCategory? = nil
    @State private var selectedFruit: Fruit? = nil

    var body: some View {
        NavigationSplitView(columnVisibility: $visibility) {
            List(FoodCategory.allCases, id: \.self, selection: $selectedCategory) { category in
                NavigationLink(category.rawValue.capitalized, value: category)
            }
            .navigationTitle("Categories")
        } contant: {
            if let selectedCategory {
                Group {
                    switch selectedCategory {
                        case .fruits:
                            List(Fruit.allCases, id: \.self, selection: $selectedFruit) { fruit in
                                NavigationLink(fruit.rawValue.capitalized, value: fruit)
                            }
                        case: .vegetbles:
                            EmptyView()
                        case: .meats:
                            EmptyView()
                    }
                }
                .navigationTitle(category.rawValue.capitalized)
            } else {
                Text("Select something!")
            }
        } detail: {
            If let selectedFruit {
                Text("You selected: \(selectedFruit.rawValue)")
                    .font(.largeTitle)
                    .navigationTitle(selectedFruit.rawValue.capitalized)
            } else {
                Text("Select something")
            }
        }
        // .NavigationSplitViewStyle(.prominentDetail)
    }
}

struct NavigationSplitViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationSplitViewBootcamp()
    }
}

enum FoodCategory: String, CaseIterable {
    case fruits, vegetbles, meats
}

enum Fruit: String, CaseIterable {
    case apple, banan, orange
}