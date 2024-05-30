//
//  SuperheroDetail.swift
//  CursoiOS
//
//  Created by Arístides Guimerá Orozco on 26/5/24.
//

import SwiftUI
import SDWebImageSwiftUI
import Charts

struct SuperheroDetail: View {
    let id:String
    
    @State var superhero:ApiNetwork.SuperheroCompleted? = nil
    @State var loading:Bool = true
    
    var body: some View {
        VStack{
            if loading{
                ProgressView().tint(.white)
            }else if let superhero = superhero{
                WebImage(url: URL(string: superhero.image.url))
                    .resizable()
                    .scaledToFill()
                    .frame(height: 250)
                    .clipped()
                Text(superhero.name).bold().font(.title).foregroundColor(.white)
                ForEach(superhero.biography.aliases, id: \.self){ alias in
                    Text(alias).foregroundColor(.gray).italic()
                }
                SuperheroStats(stats: superhero.powerstats)
                Spacer()
            }
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
            .background(.backgroundApp)
            .onAppear{
                Task{
                    do{
                       superhero = try await ApiNetwork().getHeroById(id: id)
                    }catch{
                        superhero = nil
                    }
                    loading = false
                }
            }
    }
}

struct SuperheroStats:View {
    let stats:ApiNetwork.Powerstats
    var body: some View {
        VStack{
            
            Chart{
                SectorMark(angle: .value("Count",Int(stats.combat) ?? 0),
                           innerRadius: .ratio(0.6),
                           angularInset: 5
                ).cornerRadius(5)
                    .foregroundStyle(by: .value("Category", "Combat"))
                
                SectorMark(angle: .value("Count",Int(stats.durability) ?? 0),
                           innerRadius: .ratio(0.6),
                           angularInset: 5
                ).cornerRadius(5)
                    .foregroundStyle(by: .value("Category", "Durability"))
                
                SectorMark(angle: .value("Count",Int(stats.intelligence) ?? 0),
                           innerRadius: .ratio(0.6),
                           angularInset: 5
                ).cornerRadius(5)
                    .foregroundStyle(by: .value("Category", "Intelligence"))
                
                SectorMark(angle: .value("Count",Int(stats.power) ?? 0),
                           innerRadius: .ratio(0.6),
                           angularInset: 5
                ).cornerRadius(5)
                    .foregroundStyle(by: .value("Category", "Power"))
                
                SectorMark(angle: .value("Count",Int(stats.speed) ?? 0),
                           innerRadius: .ratio(0.6),
                           angularInset: 5
                ).cornerRadius(5)
                    .foregroundStyle(by: .value("Category", "Speed"))
                
                SectorMark(angle: .value("Count",Int(stats.strength) ?? 0),
                           innerRadius: .ratio(0.6),
                           angularInset: 5
                ).cornerRadius(5)
                    .foregroundStyle(by: .value("Category", "Strength"))
            }
            
        }.padding(16).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 350)
            .background(.white)
            .cornerRadius(16)
            .padding(24)
    }
}

#Preview {
    SuperheroDetail(id:"1")
}
