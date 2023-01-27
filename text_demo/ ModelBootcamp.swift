//
//   ModelBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 24/01/23.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct _ModelBootcamp: View {

    @State var usersList: [UserModel] = [

        UserModel(displayName: "first", userName: "1", followerCount: 10, isVerified: true),
        UserModel(displayName: "second", userName: "2", followerCount: 10, isVerified: false),
        UserModel(displayName: "third", userName: "3", followerCount: 8, isVerified: true),
        UserModel(displayName: "fourth", userName: "4", followerCount: 15, isVerified: true)

    ]

    var body: some View {
        NavigationView {
            List {
                ForEach(usersList) { user in
                    HStack(alignment: .top, spacing: 10) {
                        Circle()
                            .frame(width: 35, height: 35)

                        VStack(alignment: .leading, spacing: 5) {
                            Text(user.displayName)
                                .font(.headline)

                            Text(user.userName)
                                .font(.caption)
                                .foregroundColor(.gray)
                        }

                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }

                        Spacer()

                        VStack(spacing: 5) {
                            Text("\(user.followerCount)")
                                .font(.headline)

                            Text("Followers")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }

                    }
                    .padding(.vertical, 10)
                }
            }
            .listStyle(.insetGrouped  )
            .navigationTitle("User")
        }
    }
}

struct _ModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        _ModelBootcamp()
    }
}
