//
//  PopoversBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 20/01/23.
//

// sheet
// animation
// transition

import SwiftUI

struct PopoversBootcamp: View {

    @State var showNewScreen = false

    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea(edges: .all)

            VStack {
                Button("Buttton") {
                    showNewScreen.toggle()
                }
                Spacer()
            }

            // METHOD 1: SHEET
//            .sheet(isPresented: $showNewScreen) {
//                NewScreen()
//            }

            // METHOD 2: TRANSITION
//            ZStack {
//                if showNewScreen {
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .transition(.move(edge: .bottom))
//                        .animation(.default)
//                }
//            }
//            .zIndex(2.0)

            // Method 3: animation offset
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.default)
        }
    }
}

struct NewScreen: View {

    // Method 1 : Sheet
    @Environment(\.dismiss) var dismiss

    // Method 2 : Transition
    @Binding var showNewScreen: Bool

    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .ignoresSafeArea(edges: .all)

            Button {
                // Method 1
                //dismiss()

                // Method 2
                showNewScreen.toggle()


            } label: {
                Image(systemName: "xmark")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(20)
            }
        }
     }
}


struct PopoversBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PopoversBootcamp()
//        NewScreen()
    }
}
