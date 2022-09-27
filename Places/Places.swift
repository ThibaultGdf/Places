//
//  Places.swift
//  Places
//
//  Created by Thibault GODEFROY on 26/09/2022.
//

import Foundation


struct Places: Identifiable, Decodable{
    var id: Int
    var name: String
    var lat: Double
    var lon: Double
    var address: String
    var type: String
    var url: String
    var wifi: Bool
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) // Récupération des données du JSON
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file) // Séparation des données et conversion en type data
        
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
        do {
            return try JSONDecoder().decode(T.self, from: data) // Définir la var en utilisant la fonction JSONDecoder()
        } catch {
            fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
        }
    }

    // UTILISABLE POUR TOUT LES JSON


var places : [Places] = load("places.json") // Création du tableau
