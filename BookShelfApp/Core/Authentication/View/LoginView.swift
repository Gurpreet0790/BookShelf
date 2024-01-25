//
//  LoginView.swift
//  BookShelfApp
//
//  Created by ReetDhillon on 2024-01-25.
//

import SwiftUI

struct LoginView: View {
    @State private var emailTxt = ""
    @State private var passwordTxt = ""

    var body: some View {
        NavigationStack{
            VStack{
                
                //Image
                Image("BookShelfLogo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 120)
                    .padding(.vertical, 32)
                
                //Form Fields
                VStack(spacing: 24){
                    TextInputView(textStr: $emailTxt, titleStr: "Email Address", placeholderStr: "name@example.com")
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    
                    TextInputView(textStr: $passwordTxt, titleStr: "Password", placeholderStr: "Enter your password", isSecureField: true)
                }
                .padding(.horizontal)
                .padding(.top, 15)
                
                //Sign In Button
                Button {
                    
                } label: {
                    HStack {
                        Text("SIGN IN")
                            .fontWeight(.bold)
                        Image(systemName: "arrow.right")
                    }
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 50)
                }
                .background(Color(.systemBlue))
                .cornerRadius(10.0)
                .padding(.top, 25)
                Spacer()
                
                
                //Sign Up Button
                NavigationLink{
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 3){
                        Text("Don't have an account?")
                        Text("SIGN UP")
                            .fontWeight(.bold)
                    }
                    .font(.system(size: 15))
                }
                
               
            }
        }
    }
}

#Preview {
    LoginView()
}
