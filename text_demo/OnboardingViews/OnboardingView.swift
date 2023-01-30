//
//  OnboardingView.swift
//  text_demo
//
//  Created by Mahipal on 27/01/23.
//

import SwiftUI

struct OnboardingView: View {

    // Onboarding states:
    /*
     0 - Welcome screen
     1 - Add name
     2 - Add age
     3 - add gender
     */

    let transition: AnyTransition = .asymmetric(insertion: .move(edge: .trailing),
                                                removal: .move(edge: .leading))

    @State var onboardingState: Int = 0

    // onboarding inputes
    @State var name = ""
    @State var age:Double = 25
    @State var gender: String = ""

    // for the alert
    @State var alertText = ""
    @State var isAlertVisible = false

    // app storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSingedIn = false

    var genderArray = ["Male", "Female"]

    var body: some View {
        ZStack {
            // content
            ZStack {
                switch onboardingState {
                    case 0 :
                        welcomeSection
                            .transition(transition)
                    case 1 :
                        addNameSection
                            .transition(transition)
                    case 2 :
                        addAgeSection
                            .transition(transition)
                    case 3 :
                        addGenderSection
                            .transition(transition)
                    default :
                        RoundedRectangle(cornerRadius: 25)
                            .background(Color.yellow)
                }
            }

            // buttons
            VStack {
                Spacer()
                buttomButton
            }
            .padding(30)
        }
        .alert(alertText, isPresented: $isAlertVisible) {
            Button("Ok", role: .cancel, action: {

            })
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .background(Color.purple)
    }
}


// MARK: - COMPONENTS
extension OnboardingView {

    private var buttomButton: some View {
        Text(onboardingState == 0 ? "Sign up" :
                onboardingState == 3 ? "Finish" :
                "Next")
        .font(.headline)
        .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(10)
            .animation(nil)
            .onTapGesture {
                handleNextButtonPressed()
            }
    }

    private var welcomeSection: some View {

        VStack(spacing: 40) {
            Spacer()

            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)

            Text("Lorem Ipsum?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(alignment: .bottom) {
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundColor(.white)
                }

            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.")
                .fontWeight(.medium)
                .foregroundColor(.white)

            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }

    private var addNameSection: some View {
        VStack(spacing: 40) {
            Spacer()

            Text("What's your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(alignment: .bottom) {
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundColor(.white)
                }

            TextField("Enter your name...", text: $name)
                .font(.headline)
                .frame(height: 50)
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(10)

            Spacer()
            Spacer()
        }
        //.multilineTextAlignment(.center)
        .padding(30)
    }

    private var addAgeSection: some View {
        VStack(spacing: 20) {
            Spacer()

            Text("What's your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)

            Text("\(String(format: "%.0f", age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)

            Slider(value: $age, in: 18...100, step: 1)
                .tint(Color.white)

            Spacer()
            Spacer()
        }
        //.multilineTextAlignment(.center)
        .padding(30)
    }

    private var addGenderSection: some View {
        VStack(spacing: 20) {
            Spacer()

            Text("What's your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)

            Menu {
                Picker(selection: $gender,
                       label: EmptyView(),
                       content: {

                    ForEach(genderArray, id: \.self) { item in
                        Text(item).tag(item)
                    }

                }).pickerStyle(.automatic)
                    .tint(.white)
            } label: {
                Text(gender == "" ? "Select a gender " : gender)
                    .font(.title3)
                    .frame(maxWidth: .infinity)
                    .frame(height: 55)
                    .background(.white)
                    .cornerRadius(10)
                    .accentColor(.pink)
            }

            Spacer()
            Spacer()
        }
        //.multilineTextAlignment(.center)
        .padding(30)
    }
}

//MARK: - FUNCATIONS

extension OnboardingView {
    func handleNextButtonPressed() {

//        switch onboardingState {
//            case 1 :
//                guard name.count >= 3 else {
//                    showAlert(title: "Please enter your name")
//                    return
//                }
//            case 3 :
//                guard gender.count > 1 else {
//                    showAlert(title: "Please select your gender")
//                    return
//                }
//            default:
//                break
//        }

        if onboardingState == 3 {
            signIN()
        } else {
            withAnimation(.spring()) {
                onboardingState += 1
            }
        }
    }

    func showAlert(title: String) {
        alertText = title
        isAlertVisible.toggle()
    }

    func signIN() {
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGender = gender
        withAnimation(.spring()) {
            currentUserSingedIn = true
        }
    }
}
