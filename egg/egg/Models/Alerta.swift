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
    
    func exibe(titulo: String = "Atenção", mensagem: String) {
        let alerta = UIAlertController(title: titulo, message: mensagem, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alerta.addAction(ok)
        
        controller.present(alerta, animated: true, completion: nil)
    }
}
