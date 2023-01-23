//
//  ActionsheetBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 20/01/23.
//

import SwiftUI

struct ActionsheetBootcamp: View {

    @State var setBackgroundColor = Color.cyan
    @State var showActionSheet = false

    var body: some View {
        ZStack {
            setBackgroundColor
                .ignoresSafeArea()

            VStack {
                Button("Button") {
                    showActionSheet.toggle()
                }
                .confirmationDialog("hello", isPresented: $showActionSheet) {
                    Button("Red") {
                        setBackgroundColor = .red
                    }

                    Button("Black") {
                        setBackgroundColor = .black
                    }

                    Button("Purple") {
                        setBackgroundColor = .purple
                    }
                } message: {
                    Text("Show action message")
                }
            }
        }
    }
}

struct ActionsheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionsheetBootcamp()
    }
}
