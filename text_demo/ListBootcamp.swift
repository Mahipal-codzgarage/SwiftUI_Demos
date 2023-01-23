//
//  ListBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 20/01/23.
//

import SwiftUI

struct ListBootcamp: View {

    @State var fruits: [String] = [
        "Apple",
        "Orange",
        "Banana",
        "Peach",
    ]

    @State var veggies: [String] = [
        "tomato",
        "potato",
        "carrot"
    ]

    var body: some View {

        // Method 1
        NavigationView {
            List {
                Section {
                    ForEach(fruits, id: \.self) { item in
                        Text(item)
                            .font(.caption)
                            .foregroundColor(.white)
                            .padding(.vertical)
                            //.frame(maxWidth: .infinity, maxHeight: .infinity)
                            //.background(Color.pink)
                    }
                    //                    .onDelete(perform: deleteFruit) // Method 1
                    // Method 2
                    .onDelete { index in
                        deleteFruit(index: index)
                    }
                    .onMove { IndexSet, newOffset in
                        fruits.move(fromOffsets: IndexSet, toOffset: newOffset)
                    }
                    .listRowBackground(Color.cyan)
                } header: {
                    HStack {
                        Text("Fruits")
                        Image(systemName: "apple.logo")
                    }
                    .font(.body)
                    .foregroundColor(.red)
                }

                Section {
                    ForEach(veggies, id: \.self) { item in
                        Text(item)
                    }
                } header: {
                    HStack {
                        Text("Veggies")
                        Image(systemName: "carrot.fill")
                    }
                    .font(.body)
                    .foregroundColor(.red)
                }
            }
            .accentColor(.yellow)
            .listStyle(.insetGrouped)
            .navigationTitle("List demo")
            .navigationBarItems(leading: EditButton(), trailing: addButton)
        }
        .accentColor(.red)

        // Method 2
        //        List(fruits, id: \.self) { item in
        //            Text(item)
        //        }
    }

    var addButton: some View {
        Button("Add", action: {
            fruits.append("Coconut")
        })
    }

    func deleteFruit(index: IndexSet) {
        fruits.remove(atOffsets: index)
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
