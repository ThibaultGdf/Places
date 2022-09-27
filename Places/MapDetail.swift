//
//  MapDetail.swift
//  Places
//
//  Created by Thibault GODEFROY on 26/09/2022.
//

import SwiftUI

struct MapDetail: View {
    var places : Places
    var body: some View {
        
        
        VStack {
            Text(places.name)
            
            List {
                Section(header: Text("adresse")) {
                  
                    
                    Text(places.address)
                        .fontWeight(.semibold)
                    
                }
                
                Image("Table")
                    .resizable()
                    .frame(height: 200)
                    .cornerRadius(15)
                    .padding(-20)
                
                Section() {
                    
                    if !places.url.isEmpty {
                        Link(destination: URL(string: places.url)!) {
                            Text("WEBSITE")
                                .multilineTextAlignment(.center)
                        }
                    }
                    
                   
                    
                }
                
                Section(header: Text("Horaires")) {
                  
                        Text("""
Lundi             11:30–14:30, 17:00–20:00
Mardi             11:30–14:30, 17:00–20:00
Mercredi       11:30–14:30, 17:00–20:00
Jeudi              11:30–14:30, 17:00–20:00
Vendredi       11:30–14:30, 17:00–20:00
Samedi          11:30–14:30, 17:00–20:00
Dimanche     11:30–14:30, 17:00–20:00
""")
                        .fontWeight(.semibold)
                        .lineSpacing(5)
                        
                    }
                
                
                }
        }
    }
}


struct MapDetail_Previews: PreviewProvider {
    static var previews: some View {
        MapDetail(places: Places(id: 1, name: "Nom", lat: 0.0 , lon: 0.0, address: "Adresse", type: "Type", url: "URL", wifi: true))
    }
}
