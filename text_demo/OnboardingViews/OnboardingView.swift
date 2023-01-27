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

    @State var onboardingState: Int = 3
    @State var name = ""
    @State var age:Double = 25
    @State var gender: String = ""

    var genderArray = ["Male", "Female"]

    var body: some View {
        ZStack {
            // content
            ZStack {
                switch onboardingState {
                    case 0 :
                        welcomeSection
                    case 1 :
                        addNameSection
                    case 2 :
                        addAgeSection
                    case 3 :
                        addGenderSection
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
        Text("Sign in")
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(10)
            .onTapGesture {

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

            Text("\(gender)")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)

            Menu {
                Picker(selection: $gender,
                       label: EmptyView(),
                       content: {
                    Text(genderArray[0]).tag(genderArray[0])
                    Text(genderArray[1]).tag(genderArray[1])
                }).pickerStyle(.automatic)
                    .tint(.white)
            } label: {
                Text("Select your gender")
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
