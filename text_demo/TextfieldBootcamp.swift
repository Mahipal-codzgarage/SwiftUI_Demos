//
//  TextfieldBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 20/01/23.
//

import SwiftUI

struct TextfieldBootcamp: View {

    @State var firstText = ""
    @State var arrayString = [String]()

    var body: some View {
        NavigationView {
            VStack {
                TextField("demo text", text: $firstText)
    //                .textFieldStyle(.roundedBorder)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.red)
                    .font(.headline)


                Button {
                    addText(getText: firstText)
                } label: {
                    Text("Save")
                        .padding()
                        .background(textIsAppropriate() ? Color.cyan : Color.gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                }
                .disabled(!textIsAppropriate())

                ForEach(arrayString, id: \.self) { item in
                        Text("\(item), ")
                    }

                Spacer()


            }
            .padding()
            .navigationTitle("Textfield demo")
        }
    }

    func textIsAppropriate() -> Bool {
        if firstText.count >= 3 {
            return true
        }
        return false
    }

    func addText(getText: String) {
        arrayString.append(getText)
        firstText = ""
    }
}

struct TextfieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextfieldBootcamp()
    }
}
