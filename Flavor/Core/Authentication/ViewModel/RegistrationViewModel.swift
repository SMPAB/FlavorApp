//
//  RegistrationViewModel.swift
//  Flavor
//
//  Created by Emilio Martinez on 2024-06-12.
//

import SwiftUI

class RegistrationViewModel: ObservableObject{
    
    @Published var email = ""
    @Published var userName = ""
    @Published var password = ""
    
    private let authService: AuthService
    
    init(authService: AuthService){
        self.authService = authService
    }
}


