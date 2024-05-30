//
//  MenuView.swift
//  CursoiOS
//
//  Created by Arístides Guimerá Orozco on 15/5/24.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationStack{
            List{
                NavigationLink(destination:IMCView()){
                    Text("IMC Calculator")
                }
                NavigationLink(destination:SuperheroSearcher()){
                    Text("Superhero finder")
                }
                NavigationLink(destination: FavPlaces()){
                    Text("Fav Places")
                }
            }
        }
    }
}

#Preview {
    MenuView()
}
