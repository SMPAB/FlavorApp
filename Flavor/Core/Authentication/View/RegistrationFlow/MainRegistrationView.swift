//
//  MainRegistrationView.swift
//  Flavor
//
//  Created by Emilio Martinez on 2024-06-12.
//

import SwiftUI

struct MainRegistrationView: View {
    
    @StateObject var viewModel: RegistrationViewModel
    
    init(authService: AuthService){
        self._viewModel = StateObject(wrappedValue: RegistrationViewModel(authService: authService))
    }
    var body: some View {
        VStack{
            
        }
    }
}

#Preview {
    MainRegistrationView(authService: AuthService())
}
