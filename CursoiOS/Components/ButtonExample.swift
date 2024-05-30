//
//  ButtonExample.swift
//  CursoiOS
//
//  Created by Arístides Guimerá Orozco on 1/5/24.
//

import SwiftUI

struct ButtonExample: View {

    var body: some View {
        Button("Hola") {
            print("Holiwi")
        }
        Button(action: {print("holiwi")}, label: {
            Text("Hola")
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50)
                .foregroundColor(.white)
                .background(.blue)
                .cornerRadius(10)
        })
    }
}

struct Counter:View {
    @State var subscribersNumber = 0
    var body: some View {
        Button(action: {
            subscribersNumber += 1
        }, label: {
            Text("Suscriptores: \(subscribersNumber)")
                .bold()
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .frame(height: 50)
                .foregroundColor(.white)
                .background(.red)
                .cornerRadius(10)
        })
    }
}

#Preview {
    Counter()
}
