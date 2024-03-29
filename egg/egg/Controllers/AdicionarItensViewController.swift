//
//  AdicionarItensViewController.swift
//  egg
//
//  Created by Marco Aurelio on 23/10/19.
//  Copyright © 2019 coda. All rights reserved.
//

import UIKit

protocol AdicionaItensDelegate {
    func add(_ item: Item)
}

class AdicionarItensViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var nomeTextField: UITextField!
    @IBOutlet weak var caloriasTextField: UITextField!
    
    // MARK: - Atributos
    
    var delegate: AdicionaItensDelegate?
    
    init(delegate: AdicionaItensDelegate) {
        super.init(nibName: "AdicionarItensViewController", bundle: nil)
        self.delegate = delegate
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // MARK: - View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: - IBAction
    @IBAction func adicionarItem(_ sender: Any) {
        
        guard let nome = nomeTextField.text, let calorias = caloriasTextField.text else {
            return
        }
        
        if let numeroDeCalorias = Double(calorias) {
            let item = Item(nome: nome, calorias: numeroDeCalorias)
            
//            // 1
//            if delegate == nil {
//                return
//            }
//            delegate!.add(item) // Com ! -> Forced Unwrapped
//
//            // 2
//            if delegate != nil {
//                return
//            }
//            delegate!.add(item)
//
//            // 3
//            if let delegate = delegate {
//                delegate.add(item)
//            }
//
//            // 4
//            guard let delegate = delegate else { return }
//            delegate.add(item)
//
//            // 5
//            delegate?.add(item) // Faz um if interno, é possível encadear -> delegate?.add()?.remove()?.etc()
            
            delegate?.add(item)
            navigationController?.popViewController(animated: true)
        }
        
        
        // optional chaining
//        func transfere(de: Conta, para: Conta, valor: NSDecimalNumber) {
//            de.retirar(valor)
//            para.transferir(valor)
//
//            // Se estiver trabalhando em um app de um banco,
//            // e o navigationController for nil, a retirada e transferencia de dinheiro vai ser feita
//            // porém sem executar o pop da tela, dando a impressão para o usuário que a transferência
//            // não foi realizada, se o mesmo continuar clicando em transferir, vai debitar várias
//            // vezes de sua conta
//            // ALERTA com optional chaining
//
//            navigationController?.popViewController(animated: true)
//
//
//            // Este if let é o que o ? faz debaixo dos panos, porém por ter o else
//            // ajuda a lembrar para tratar exceções
//
//            if let navigation = navigationController {
//                navigation.popViewController(animated: true)
//            } else {
//                // Cancelar transação
//            }
//        }
    }
}
 
