//
//  Item.swift
//  egg
//
//  Created by Marco Aurelio on 21/10/19.
//  Copyright © 2019 coda. All rights reserved.
//

import UIKit

class Item: NSObject {
    // MARK: - Atributos
    let nome: String
    let calorias: Double
    
    // MARK: - Construtor
    init(nome: String, calorias: Double) {
        self.nome = nome
        self.calorias = calorias
    }
}
