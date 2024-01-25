//
//  AuthViewModel.swift
//  BookShelfApp
//
//  Created by ReetDhillon on 2024-01-25.
//

import Foundation
import Firebase

class AuthViewModel: ObservableObject {
    @Published var userSession: Firebase.User?
    @Published var currentUser: UserInfo?
    
    init () {
        
    }
    func signIn(withEmail email: String, password: String) async throws{
        
    }
    func createUser(withEmail email: String, password: String, fullName: String)async throws{
        
    }
    func signOut() {
        
    }
    func deleteAccount() {
        
    }
    func fetchUser() async {
        
    }
    
}
