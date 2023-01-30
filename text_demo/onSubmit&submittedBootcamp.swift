//
//  onSubmit&submittedBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 30/01/23.
//

import SwiftUI

struct onSubmit_submittedBootcamp: View {

    @State private var textMessage: String = ""

    var body: some View {
        VStack {
            TextField("Placeholder", text: $textMessage)
                .onSubmit {
                    print("submite text field")
                }
                .submitLabel(.done)
        }
    }
}

struct onSubmit_submittedBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        onSubmit_submittedBootcamp()
    }
}
