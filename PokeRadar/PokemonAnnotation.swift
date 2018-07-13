//
//  PokemonAnnotation.swift
//  PokeRadar
//
//  Created by Cristian Torres on 7/11/18.
//  Copyright © 2018 Uesebe. All rights reserved.
//

import Foundation
import MapKit

class PokemonAnnotation: NSObject, MKAnnotation {
    
    var coordinate = CLLocationCoordinate2D()
    var pokemon: Pokemon
    var title: String?
    
    init(coordinate:CLLocationCoordinate2D, pokemonId: Int ) {
        self.coordinate = coordinate
        self.pokemon = PokemonFactory.shared.getPokemon(with: pokemonId)
        self.title = self.pokemon.name
    }
    
}
