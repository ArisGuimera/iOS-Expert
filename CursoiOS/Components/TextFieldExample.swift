//
//  TextFieldExample.swift
//  CursoiOS
//
//  Created by Arístides Guimerá Orozco on 1/5/24.
//

import SwiftUI

struct TextFieldExample: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        
        VStack {
            TextField("Escribe tu email", text: $email)
                .keyboardType(.emailAddress)
                .padding(16)
                .background(.gray.opacity(0.2))
                .cornerRadius(16)
                .padding(.horizontal, 32)
                .onChange(of: email) { oldValue, newValue in
                    print("El antiguo valor era \(oldValue) y el nuevo es \(newValue)")
            }
            SecureField("Escribe tu contraseña", text: $password)
                .keyboardType(.emailAddress)
                .padding(16)
                .background(.gray.opacity(0.2))
                .cornerRadius(16)
                .padding(.horizontal, 32)
                .onChange(of: password) { oldValue, newValue in
                    print("El antiguo valor era \(oldValue) y el nuevo es \(newValue)")
            }
        }
    }
}

#Preview {
    TextFieldExample()
}
