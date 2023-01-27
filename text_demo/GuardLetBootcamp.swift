//
//  GuardLetBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 23/01/23.
//

import SwiftUI

struct GuardLetBootcamp: View {

    @State var displayText: String? = nil
    @State var isLoading = false

    var body: some View {
        NavigationView {
            VStack {
                Text("If let and Guard let demo")
                if let getText = displayText {
                    Text(getText)
                }

                if isLoading {
                    ProgressView()
                }

                Spacer()
            }
            .navigationTitle("IF let")
            .onAppear {
                loadData()
            }
        }
    }

    func loadData() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
            displayText = "new text"
            isLoading = false
        })
    }
}

struct GuardLetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GuardLetBootcamp()
    }
}
