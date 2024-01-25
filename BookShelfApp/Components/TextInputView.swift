//
//  TextInputView.swift
//  BookShelfApp
//
//  Created by ReetDhillon on 2024-01-25.
//

import SwiftUI

struct TextInputView: View {
    @Binding var textStr: String
    let titleStr: String
    let placeholderStr: String
    var isSecureField = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15){
            Text(titleStr)
                .foregroundColor(Color(.darkGray))
                .fontWeight(.semibold)
                .font(.footnote)
            
            if isSecureField{
                SecureField(placeholderStr, text: $textStr)
                    .font(.system(size: 15))
            } else {
                TextField(placeholderStr, text: $textStr)
                    .font(.system(size: 15))
            }
        }
    }
}

#Preview {
    TextInputView(textStr: .constant(""), titleStr: "Email Address", placeholderStr: "name@example.com")
}
