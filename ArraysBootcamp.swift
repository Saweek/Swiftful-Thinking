/*
    ArraysBootcamp.swift
*/

import SwiftUI

// model
struct UserModel: Identifiable {
    let id = UUID().uuidString
    let name: String
    let points: Int
    let isVerified: Bool
}

@Observable
class ArrayModificationViewModel {

    var dataArray: [UserModel] = []
    var filteredArray: [UserModel] = []
    var mappedArray: [String] = []

    init() {
        getUsers()
    }

    func updateFilteredArray() {
        // sort
/*
        filteredArray = dataArray.sorted { (user1, user2) -> Bool in // those users are just for algotithm to understand, what you want to do, so you can work with data 
            return user1.points > user2.points
        }

        // more advanced and fster way of doing the same
        filteredArray = dataArray.sorted(by: { $0.points > $1.points})
*/

        // filter
/*
        filteredArray = dataArray.filter({ (user) -> Bool in
            return user.isVerified
        })

        // or

        filteredArray = dataArray.filter({ $0.isVerified })
*/

        // map
/*
        mappedArray = dataArray.map({ (user) -> String in // T - means any type you want
            return user.name
        }) 

        // or

        mappedArray = dataArray.map({ $0.name })
*/

        // compacte map
/*
        //in case one of our paramiters is optional (?)

        mappedArray = dataArray.compactMap({ () -> String? in
            return user.name
        })

        // or

        mappedArray = dataArray.compactMap({ $0.name })
*/

        // combining them
        let sort = dataArray.sorted(by: { $0.points > $1.points})
        let filter = dataArray.filter({ $0.isVerified })
        let map = dataArray.compactMap({ $0.name })

        mappedArray = dataArray
            .sorted(by: { $0.points > $1.points})
            .filter({ $0.isVerified })
            .compactMap({ $0.name })
    }

    func getUsers() {
        let user1 = UserModel(name: "Nick", points: 5, isVerified: true)
        let user2 = UserModel(name: "Chris", points: 0, isVerified: false)
        let user3 = UserModel(name: "Joe", points: 20, isVerified: true)
        let user4 = UserModel(name: "Emily", points: 50, isVerified: false)
        let user5 = UserModel(name: "Samantha", points: 45, isVerified: true)
        let user6 = UserModel(name: "Jason", points: 76, isVerified: false)
        let user7 = UserModel(name: "Sarah", points: 45, isVerified: true)
        let user8 = UserModel(name: "Liza", points: 23, isVerified: false)
        let user9 = UserModel(name: "Steve", points: 1, isVerified: true)
        let user10 = UserModel(name: "Amanda", points: 100, isVerified: false)

        self.dataArray.append(contentsOf: [user1, user2, user3, user4, user5, user6, user7, user8, user9, user10])
    }



}

struct ArraysBootcamp: View {

    @State var vm = ArrayModificationViewModel()

    var body: some View {
        ScrollView {
            VStack (spacing: 10) {
                ForEach (vm.mappedArray, id: \.self) { name in
                    Text(name).font(.title)
                }








                // for filter and sort

                // ForEach (vm.filteredArray) {user in
                //     VStack (alignment: .leading) {
                //         Text(user.name)

                //         HStack {
                //             Text("Points: \(user.points)")
                //                 .font(.headline)
                            
                //             Spacer()

                //             Image(systemName: user.isVerified ? "flame.fill" : "")
                //         }
                //     }
                //     .foregroundColor(.white)
                //     .padding()
                //     .background(Color.blue).cornerRadius(10)
                //     .pdding(.horizontal)
                // }
            }
        }
    }
}

struct ArraysBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ArraysBootcamp()
    }
}