//
//  AlertBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 20/01/23.
//

import SwiftUI

struct AlertBootcamp: View {
    @State var setBackgroundColor = Color.red
    @State var showAlert = false

    var body: some View {

        ZStack {

            setBackgroundColor
                .ignoresSafeArea()

            VStack {
                Button("Button") {
                    showAlert.toggle()
                }
                .alert("hii 🙋🏽‍♂️", isPresented: $showAlert) {
                    Button("Cancel", role: .cancel, action: {
                        setBackgroundColor = .cyan
                    })
                    Button("Ok", role: .destructive, action: {
                        setBackgroundColor = .green
                    })
                }
    //            .alert("hello", isPresented: $showAlert) {
    //
    //            } message: {
    //                Text("message")
    //            }


            }
        }
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
