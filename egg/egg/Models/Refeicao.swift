//
//  Refeicao.swift
//  egg
//
//  Created by Marco Aurelio on 21/10/19.
//  Copyright © 2019 coda. All rights reserved.
//

import UIKit

class Refeicao: NSObject, NSCoding {
    
    // MARK: - Atributos
    let nome: String
    let felicidade: Int
    var itens: Array<Item> = []
    
    // MARK: - Construtor
    init(nome: String, felicidade: Int, itens: [Item] = []) {
        self.nome = nome
        self.felicidade = felicidade
        self.itens = itens
    }
    
    // MARK: - NSCoding
    func encode(with coder: NSCoder) {
        coder.encode(nome, forKey: "nome")
        coder.encode(felicidade, forKey: "felicidade")
        coder.encode(itens, forKey: "itens")
    }
    
    required init?(coder: NSCoder) {
        <#code#>
    }
    
    // MARK: - Métodos
    func totalDeCalorias() -> Double {
        var total = 0.0
        
        for item in itens {
            total += item.calorias
        }
        
        return total
    }
    
    func detalhes() -> String {
        var mensagem = "Felicidade: \(felicidade)"
        
        for item in itens {
            mensagem += ", \(item.nome) - calorias: \(item.calorias)"
        }
        
        return mensagem
    }
}
