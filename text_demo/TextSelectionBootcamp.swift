//
//  TextSelectionBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 30/01/23.
//

import SwiftUI

struct TextSelectionBootcamp: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
                .textSelection(.enabled)
        }
    }
}

struct TextSelectionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextSelectionBootcamp()
    }
}
