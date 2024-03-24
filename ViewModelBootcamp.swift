import SwiftUI

struct FruitModel {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

// dont forget to add type ObservableObject to the class that you want to observe
class FruitViewModel: ObservableObject { 
    @Published var fruitArray: [FruitModel] = []
    // published - same things as @State jusn in the class
    @Published var isLoading: Bool = false

    init() {
        getFruits()
        // this things was created to overcome the problem
        // with appending the fruits over and over again, each time the view is reloaded
        // Init works like:
        // at the first time we initialize the class in out View
        // it will do the code inside init
        // but then, dosent metter how much our view will reload,
        // the class is already initiolized and will not be initialized twice
    }

    func getFruits() {
        let fruit1 = FruitModel(name: "Orange", count 1)
        let fruit2 = FruitModel(name: "Banana", count 2)
        let fruit3 = FruitModel(name: "Watermelon", count 88)

        isLoading = true
        DispatchedQueue.main.asyncAfter(deadline: .now() + 3) {
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.fruitArray.append(fruit1)
            self.isLoading = false
        }
    }

    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}

struct ViewModelBootcamp: View {

    // @State var fruitArray: [FruitModel] = []

    @ObservedObject var fruitViewModel: FruitViewModel = FruitViewModel()
    // observedObject observes the whole class, and not only one parameter
    // if the view is recreated, reload, anything
    // observable object is als going to reload
    // so if you want observable object not to be recreated or reolad use the other property
    // @StateObject

    // @StateObject -> USE THIS ON CREATION / INIT
    // so when I create an object, I would use this

    // but when we REFER to already excisting @StateObject object, i would use lower
    // @ObservedObject -> USE THIS FOR SUBVIEWS

    var body: some View {
        NavigationView {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) {fruit in
                        HStack
                        {
                            Text("\(fruit.count)")
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                                .foregroundColor(.red)
                        }
                    }
                    .onDelete (perform: fruitViewModel.deleteFruit())
                }
            }
            .listStyle(GrouppedListStyle())
            .navigationTitle("Fruit list")
            .navigationBarItems(
                trailing: NavigationLink (
                    destination: RandomScreen(fruitViewModel: FruitViewModel), label: {
                        Image(systemName: "arreow.right")
                            .font(.title)
                    }
                )
            )
        }
    }
}

struct RandomScreen: View {

    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View {
        ZStack
        {
            Color.green.ignoresSafeArea()

            VStack
            {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .foregroundColor(.white)
                        .font(.headline)
                }
            }
        }
    }
}

struct ViewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootcamp()
    }
}
