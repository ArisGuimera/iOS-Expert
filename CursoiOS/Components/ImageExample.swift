//
//  ImageExample.swift
//  CursoiOS
//
//  Created by Arístides Guimerá Orozco on 1/5/24.
//

import SwiftUI

struct ImageExample: View {
    var body: some View {
        Image("swift")
            .resizable()
            .scaledToFit()
            .frame(width: 50, height: 90)
        
        Image(systemName: "figure.walk")
            .resizable()
    }
}

#Preview {
    ImageExample()
}
