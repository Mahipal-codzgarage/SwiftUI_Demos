//
//  ListSwipeActionBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 30/01/23.
//

import SwiftUI

struct ListSwipeActionBootcamp: View {

    @State var dataArray = ["first", "second", "third", "fourth"]

    var body: some View {
        List {
            ForEach(dataArray,id: \.self) { item in
                Text(item.capitalized)
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        Button("Archive") {

                        }
                        .tint(Color.purple)

                        Button("Save") {

                        }
                        .tint(Color.green)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: false) {

                        Button("Delete") {

                        }
                        .tint(Color.red)
                    }
            }
           // .onDelete(perform: deleteItems)
        }
    }

//     func deleteItems(getIndexSet: IndexSet) {
//        dataArray.remove(atOffsets: getIndexSet)
//    }

}

struct ListSwipeActionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionBootcamp()
    }
}
