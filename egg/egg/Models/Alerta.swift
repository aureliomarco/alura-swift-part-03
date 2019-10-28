//
//  Alerta.swift
//  egg
//
//  Created by Marco Aurelio on 28/10/19.
//  Copyright © 2019 coda. All rights reserved.
//

import UIKit

class Alerta {
    let controller: UIViewController
    
    init(controller: UIViewController) {
        self.controller = controller
    }
    
    func exibe() {
        let alerta = UIAlertController(title: "Desculpe =Z", message: "Não foi possível adicionar o item na lista", preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alerta.addAction(ok)
        
        controller.present(alerta, animated: true, completion: nil)
    }
}
