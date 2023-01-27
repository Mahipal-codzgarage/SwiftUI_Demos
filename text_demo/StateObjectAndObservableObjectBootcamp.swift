//
//  StateObjectAndObservableObjectBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 27/01/23.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject   {

    @Published var fruitsArray:[FruitModel] = []
    @Published var isLoading: Bool = false

    init() {
        fetchFruits()
    }

    func fetchFruits() {

        let fruit1 = FruitModel(name: "banana", count: 3)
        let fruit2 = FruitModel(name: "orange", count: 6)
        let fruit3 = FruitModel(name: "graps", count: 9)

        isLoading = true

        DispatchQueue.main.asyncAfter(deadline: .now() + 2 , execute: {

            self.fruitsArray.append(fruit1)
            self.fruitsArray.append(fruit2)
            self.fruitsArray.append(fruit3)

            self.isLoading = false
        })
    }

    func delteFruit(getIndex: IndexSet) {
        fruitsArray.remove(atOffsets: getIndex)
    }
}

struct StateObjectAndObservableObjectBootcamp: View {

    // @stateObject	-> User this on creation / Init
    // @observedObject -> Use this for subview

    //    @ObservedObject var fruitViewModelObj = FruitViewModel()
    @StateObject var fruitViewModelObj = FruitViewModel()

    var body: some View {
        NavigationView {
            VStack {
                if fruitViewModelObj.isLoading {
                    ProgressView()
                } else {
                    List {
                        ForEach(fruitViewModelObj.fruitsArray) { fruit in
                            HStack {

                                Text("\(fruit.count)")

                                Text("\(fruit.name)")
                                    .bold()
                            }
                            .font(.title3)
                        }
                        .onDelete(perform: fruitViewModelObj.delteFruit)
                    }
                    .listStyle(.grouped)
                }
            }
            .navigationTitle(" Fruits")
            .navigationBarItems(trailing: NavigationLink(destination: {
                RandomScreen(fruitViewModel: fruitViewModelObj)
            }, label: {
                Image(systemName: "arrow.right")
                    .font(.title)
            }))
//            .onAppear {
//                fruitViewModelObj.fetchFruits()
//            }
        }
    }
}

struct RandomScreen: View {

    @Environment(\.dismiss) var dismiss
    @ObservedObject var fruitViewModel : FruitViewModel

    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()

            Button {
                fruitViewModel.fruitsArray.append(FruitModel(name: "new", count: 11))
                dismiss()
            } label: {
                Text("Go back")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
        }
    }
}

struct StateObjectAndObservableObjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StateObjectAndObservableObjectBootcamp()
        }
    }
}
