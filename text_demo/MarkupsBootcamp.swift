//
//  MarkupsBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 23/01/23.
//

import SwiftUI

struct MarkupsBootcamp: View {

    // MARK: - PROPERTIES

    @State var data: [String] = [
        "Apples", "Oranges", "Bananas"
    ]

    @State var showAlert: Bool = false

    // MARK: - BODY

    /*
     Working copy - things to do:
     1) Fix title
     2) Fix alert
     */

    var body: some View {
        NavigationView {
            ScrollView {
                Text("hello")

                ForEach(data, id: \.self) { item in
                    Text(item)
                        .font(.headline)
                }
            }
            .navigationTitle("Mark-ups")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Alert") {
                        showAlert.toggle()
                    }
                }
            }
            .alert("hii 🙋🏽‍♂️", isPresented: $showAlert) {
                Button("Cancel", role: .cancel, action: {
                    alertAction(firstValue: "", secondValue: "")
                })
                Button("Ok", role: .destructive, action: {
                    alertAction(firstValue: "", secondValue: "")
                })
            }
        }
    }

    // MARK: - FUNCATION



    /// funcation description
    ///
    /// this funcation just for demo purpose.
    ///```
    ///alertAction(firstValue: "first", secondValue: "second")
    ///```
    ///
    /// - Warning: warning message
    /// - Parameters:
    ///   - firstValue: first value
    ///   - secondValue: second value
    /// - Returns: retrun strring value
    func alertAction(firstValue: String, secondValue: String) -> String {
        return ""
    }
}


// MARK: - PREVIEW
struct MarkupsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        MarkupsBootcamp()
    }
}
