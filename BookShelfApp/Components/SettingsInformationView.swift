//
//  SettingsInformationView.swift
//  BookShelfApp
//
//  Created by ReetDhillon on 2024-01-25.
//

import SwiftUI

struct SettingsInformationView: View {
    let imageNameStr: String
    let titleStr: String
    var tintColor: Color
    var body: some View {
        HStack(spacing: 12){
            Image(systemName: imageNameStr)
                .imageScale(.small)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(tintColor)
            
            Text(titleStr)
                .font(.subheadline)
                .foregroundColor(.black)
        }
    }
}

#Preview {
    SettingsInformationView(imageNameStr: "gear", titleStr: "Version", tintColor: Color(.systemGray))
}
