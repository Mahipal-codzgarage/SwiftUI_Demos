//
//  TextEditorBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 20/01/23.
//

import SwiftUI

struct TextEditorBootcamp: View {

    @State var textData = "demo"

    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textData)
                    .frame(width: .infinity, height: 300)
                    //.background(Color.red)
                    .foregroundColor(Color.black)
                    .colorMultiply(.cyan)
                    .cornerRadius(10)

                Button {

                } label: {
                    Text("Save")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                Spacer()
            }
            .padding()
//            .background(Color.green)
            .navigationTitle("Text Editor")

        }
    }
}

struct TextEditorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootcamp()
    }
}
