//
//  SheetsBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 20/01/23.
//

import SwiftUI

struct SheetsBootcamp: View {

    @State var showSheet = false

    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea(edges: .all)

            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            }
            // sheet
//            .sheet(isPresented: $showSheet) {
//                SecondScreen()
//            }

            // full screen
            .fullScreenCover(isPresented: $showSheet) {
                SecondScreen()
            }
        }
    }
}


struct SecondScreen: View {

    @Environment(\.dismiss) var presented
//    @Environment(\.isPresented) var presented

    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .ignoresSafeArea(edges: .all)

            Button {
                presented()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }
        }
    }
}

struct SheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBootcamp()
//        SecondScreen()
    }
}
