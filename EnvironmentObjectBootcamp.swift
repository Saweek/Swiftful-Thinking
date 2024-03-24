/*
    EnvironmentObjectBootcamp.swift

If you dont want to pass a viriable using @StateObject and @ObservedObject, then
you can the variable to @EnvironmentObject and all the view in the same hierocy
will have access to the variable without needing to use @StateObject and
@ObservedObject
*/

import SwiftUI

class EnvironmentViewModel: ObservedObject {
    
    @Published var dataArray: [String] = []

    init() {
        getData()
    }

    func getData() {
        self.dataArray.append(contentsOf: ["iPhone", "iPda", "iMac", "Apple Watch"])
    }
}

struct EnvironmentObjectBootcamp: View {

    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()

    var body: some View {
        NaviagtionView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink(
                        destination: DetailedView(selectedItem: item),
                        label: {
                            Text(item)
                        }
                    )
                }
            }
            .navigationTitle("iOS Devices")
        }
        // here is where we make the object accessable
        .environmentObject(viewModel)
    }
}

struct DetailedView: View {

    let selectedItem: String

    var body: some View {
        ZStack
        {
            // background
            Color.orange.ignoresSafeArea()

            // foregound
            NavigationLink(
                destination: FinalView(),
                label: {
                    Text(selectedItem)
                        .font(.headline)
                        .foregroundColor(.orange)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(30)
                }
            )
            
        }
    }
}

struct FinalView: View {

    @EnvironmentObject var viewModel: EnvironmentViewModel

    var body: some View {
        ZStack
        {
            // background
            LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .topLeading, endPoint: .trailing)

            // foreground
            ScrollView {
                VStack (spacing: 20) {
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}

struct EnvironmentObjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectBootcamp()
    }
}
