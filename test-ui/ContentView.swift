//
//  ContentView.swift
//  test-ui
//
//  Created by watanabe yudai on 2019/06/24.
//  Copyright © 2019 watanabe yudai. All rights reserved.
//

import SwiftUI

extension Color {
    
    static func rgb(red: Int, green: Int, blue: Int, opacity: Double = 1) -> Color {
        return Color(red: Double(red)/255, green: Double(green)/255, blue: Double(blue)/255, opacity: opacity)
    }
    
    static let border = Color.rgb(red: 47, green: 46, blue: 65)
    static let main = Color.rgb(red: 108, green: 99, blue: 255)
}

struct IllustrationImage: View {
    var body: some View {
        Image("Illustration")
            .overlay(
                VStack(alignment: .center) {
                    Text("Biking App").font(.system(size: 30))
                    Spacer()
                }
            )
    }
}

struct TitleText: View {
    var body: some View {
        Text("Continue with")
            .color(.gray)
    }
}

struct ButtonsView: View {
    var body: some View {
        HStack(alignment: .center,
               spacing: 40) {
                Button(action: { print("tapped fb") }) {
                    Image("fb")
                        .renderingMode(.original)
                }
                Button(action: { print("tapped google") }) {
                    Image("google")
                        .renderingMode(.original)
                }
                Button(action: { print("tapped twitter") }) {
                    Image("twitter")
                        .renderingMode(.original)
                }
        }
    }
}

struct LoginButton: View {
    var body: some View {
        Button(action: {}) {
            HStack {
                Spacer()
                Text("Log in")
                    .font(.headline)
                    .color(.white)
                Spacer()
                }
                .padding(.vertical, 10.0)
                .background(Color.main, cornerRadius: 12.0)
                .padding(.horizontal, 50)
        }
    }
}

struct ResetPasswordButton: View {
    var body: some View {
        Button(action: {}) {
            HStack {
                Spacer()
                Text("RESET PASSWORD")
                    .font(.headline)
                    .color(Color.main)
                Spacer()
            }
        }
    }
}

struct ContentView : View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 20) {
            IllustrationImage()
            TitleText()
            ButtonsView()
            Text("Or sign in with email")
                .color(.gray)
            TextField($email, placeholder: Text("mail address"))
                .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
                .frame(width: 300, height: 40, alignment: .center)
                .border(Color.border, width: 0.5, cornerRadius: 12)
                .lineSpacing(10)
                .textContentType(.username)
            TextField($password, placeholder: Text("password"))
                .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
                .frame(width: 300, height: 40, alignment: .center)
                .border(Color.border, width: 0.5, cornerRadius: 12)
                .lineSpacing(10)
                .textContentType(.password)
            LoginButton()
            ResetPasswordButton()
            HStack(alignment: .center, spacing: 10) {
                Text("Don't have an account?")
                    .color(.gray)
                Button(action: {}) {
                    Text("Sign up here")
                        .color(Color.main)
                }
            }
        }
    }
}

struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ScrollView {
            ContentView()
        }
    }
}
