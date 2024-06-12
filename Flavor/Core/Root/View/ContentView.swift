//
//  ContentView.swift
//  Flavor
//
//  Created by Emilio Martinez on 2024-06-11.
//

import SwiftUI
import FirebaseAuth

struct ContentView: View {
    
    private var authService: AuthService
    @StateObject var viewModel: ContentViewModel
    
    init(authService: AuthService){
        self.authService = authService
        self._viewModel = StateObject(wrappedValue: ContentViewModel(service: authService))
    }
    var body: some View {
        Group{
            if viewModel.userSession == nil {
                LoginView(authservice: authService)
            } else {
                Text("Signt from: \(viewModel.userSession?.uid ?? "")")
                    .onTapGesture {
                        Task{
                            try Auth.auth().signOut()
                            authService.userSession = nil
                        }
                        
                    }
            }
        }
    }
}

#Preview {
    ContentView(authService: AuthService())
}
