//
//  ForEachBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 19/01/23.
//

import SwiftUI

struct ForEachBootcamp: View {
    var body: some View {
        VStack {
            ForEach(0..<2 ) { item in
                Circle()
                    .frame(width: 10, height: 10)
            }
        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
