//
//  ContentView.swift
//  CursoiOS
//
//  Created by Arístides Guimerá Orozco on 28/4/24.
//

import SwiftUI

struct Exercise1: View {
    var body: some View {
            VStack {
                HStack{
                    Rectangle()
                        .foregroundColor(.blue)
                    Rectangle()
                        .foregroundColor(.orange)
                    Rectangle()
                        .foregroundColor(.yellow)
                }.frame(height: 100)
                Rectangle()
                    .frame(height: 100)
                    .foregroundColor(.orange)
                HStack{
                    Circle()
                        .foregroundColor(.green)
                    Rectangle()
                    Circle()
                        .foregroundColor(.indigo)
                }.frame(height: 250)
                Rectangle()
                    .frame(height: 100)
                    .foregroundColor(.orange)
                HStack{
                    Rectangle()
                        .foregroundColor(.blue)
                    Rectangle()
                        .foregroundColor(.orange)
                    Rectangle()
                        .foregroundColor(.yellow)
                }.frame(height: 100)
            }
            .background(.red)
    }
}


#Preview {
    Exercise1()
}
