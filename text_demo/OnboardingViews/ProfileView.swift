//
//  ProfileView.swift
//  text_demo
//
//  Created by Mahipal on 27/01/23.
//

import SwiftUI

struct ProfileView: View {

    // app storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSingedIn = false

    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)

            Text(currentUserName ?? "mahipal")
            Text("\(currentUserAge ?? 0)")
            Text(currentUserGender ?? "male")

            Button("Sign Out") {
                currentUserName = nil
                currentUserAge = nil
                currentUserGender = nil
                withAnimation(.spring()) {
                    currentUserSingedIn = false
                }
            }
        }
        .font(.headline)
        .frame(maxWidth: .infinity)
        .foregroundColor(.purple)
        .padding()
        .padding(.vertical, 40)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 10)

    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
