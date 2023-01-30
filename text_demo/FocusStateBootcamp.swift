//
//  FocusStateBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 30/01/23.
//

import SwiftUI

struct FocusStateBootcamp: View {

    // single state
    @FocusState private var emailInFocus: Bool
    @State private var email = ""

    @FocusState private var passwordInFocus: Bool
    @State private var password = ""

    // multiple state
    @State private var firstName = ""
    @State private var lastName = ""

    enum OnboardingFields: Hashable {
        case firstName
        case lastName
    }

    @FocusState private var fieldsInFocus: OnboardingFields?

    var body: some View {
        VStack {
            TextField("Email", text: $email)
                .focused($emailInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)

            SecureField("Password", text: $password)
                .focused($passwordInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)

            // for multiple textfield
            TextField("First name", text: $firstName)
                .focused($fieldsInFocus, equals: .firstName)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)

            TextField("Last name", text: $lastName)
                .focused($fieldsInFocus, equals: .lastName)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)

            Button("Submit") {
                emailInFocus.toggle()
            }

            Spacer()
        }
        .padding()
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
                emailInFocus = true
            })
        }
    }
}

struct FocusStateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootcamp()
    }
}
