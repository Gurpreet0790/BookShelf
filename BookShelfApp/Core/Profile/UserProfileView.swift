//
//  UserProfileView.swift
//  BookShelfApp
//
//  Created by ReetDhillon on 2024-01-25.
//

import SwiftUI

struct UserProfileView: View {
    var body: some View {
        List{
            Section{
                HStack {
                    Text(UserInfo.MOCK_USER.intials)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 72, height: 72)
                        .background(Color(.systemGray3))
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text(UserInfo.MOCK_USER.fullName
                        )
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .padding(.top, 5)
                        
                        Text(UserInfo.MOCK_USER.email)
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                }
            }
            
            Section("Books Information"){
                HStack {
                    SettingsInformationView(imageNameStr: "gear", titleStr: "Books Categories", tintColor: Color(.systemGray))
                    
                    Spacer()
                    
                    Text("15")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            
            Section("General"){
                HStack {
                    SettingsInformationView(imageNameStr: "gear", titleStr: "Version", tintColor: Color(.systemGray))
                    
                    Spacer()
                    
                    Text("5.0.0")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            
            Section("Account"){
                Button{
                    print("Sign Out Account")
                } label: {
                    SettingsInformationView(imageNameStr: "arrow.left.circle.fill", titleStr: "Sign Out", tintColor: Color(.red))
                }
                
                Button{
                    print("Delete Account")
                } label: {
                    SettingsInformationView(imageNameStr: "xmark.circle.fill", titleStr: "Delete Account", tintColor: Color(.red))
                }
            }
        }
    }
}

#Preview {
    UserProfileView()
}
