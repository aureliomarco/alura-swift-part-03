//
//  Item.swift
//  egg
//
//  Created by Marco Aurelio on 21/10/19.
//  Copyright © 2019 coda. All rights reserved.
//

import UIKit

class Item: NSObject, NSCoding {
    // MARK: - Atributos
    let nome: String
    let calorias: Double
    
    // MARK: - Construtor
    init(nome: String, calorias: Double) {
        self.nome = nome
        self.calorias = calorias
    }
    
    // MARK: - NSCoding
    func encode(with coder: NSCoder) {
        coder.encode(nome, forKey: "nome")
        coder.encode(calorias, forKey: "calorias")
    }
    
    required init?(coder: NSCoder) {
        nome = coder.decodeObject(forKey: "nome") as! String
        calorias = coder.decodeDouble(forKey: "calorias")
    }
    
}
