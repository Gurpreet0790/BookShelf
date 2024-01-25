//
//  RegistrationView.swift
//  BookShelfApp
//
//  Created by ReetDhillon on 2024-01-25.
//

import SwiftUI

struct RegistrationView: View {
    @State private var emailTxt = ""
    @State private var fullNameTxt = ""
    @State private var passwordTxt = ""
    @State private var confirmPasswordTxt = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            //Image
            Image("BookShelfLogo")
                .resizable()
                .scaledToFill()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 120)
                .padding(.vertical, 32)
            
            //Form Fields
            VStack(spacing: 25){
                TextInputView(textStr: $emailTxt, titleStr: "Email Address", placeholderStr: "name@example.com")
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                
                TextInputView(textStr: $fullNameTxt, titleStr: "Full Name", placeholderStr: "Jon Snow")
                    .autocapitalization(.none)
                
                TextInputView(textStr: $passwordTxt, titleStr: "Password", placeholderStr: "Enter your password", isSecureField: true)
                
                TextInputView(textStr: $confirmPasswordTxt, titleStr: "Confirm Password", placeholderStr: "Confirm your password", isSecureField: true)
            }
            .padding(.horizontal)
            .padding(.top, 15)
            
            //Sign In Button
            Button {
                
            } label: {
                HStack {
                    Text("SIGN UP")
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
            
            Button {
                dismiss()
            } label:  {
                HStack(spacing: 3){
                Text("Already have an account?")
                Text("SIGN IN")
                    .fontWeight(.bold)
            }
            .font(.system(size: 15))
            }
        }
    }
}

#Preview {
    RegistrationView()
}
