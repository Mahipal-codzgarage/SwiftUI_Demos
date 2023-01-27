//
//  AppStorageBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 27/01/23.
//

import SwiftUI

struct AppStorageBootcamp: View {

    @AppStorage("name") var userName: String?

    var body: some View {
        VStack(spacing: 20) {

            Text(userName ?? "No name")

            Button("Save") {
                userName = "Mahipal"
            }
        }
    }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}
