//
//  BookShelfAppApp.swift
//  BookShelfApp
//
//  Created by ReetDhillon on 2024-01-25.
//

import SwiftUI
import Firebase

@main
struct BookShelfAppApp: App {
    @StateObject var viewModelObj = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModelObj)
        }
    }
}
