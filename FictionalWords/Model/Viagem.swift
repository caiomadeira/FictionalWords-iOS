//
//  Viagem.swift
//  FictionalWords
//
//  Created by Caio Madeira on 21/07/20.
//  Copyright © 2020 fictional-words. All rights reserved.
//

import UIKit

class Viagem: NSObject {
    
    let titulo:String
    let quantidadeDeDias:String
    let preco:String
    let caminhoDaImagem:String
    
    init(titulo:String, quantidadeDeDias:String, preco:String, caminhoDaImagem:String){ //metodo construtor
        
        self.titulo = titulo
        self.quantidadeDeDias = quantidadeDeDias
        self.preco = preco
        self.caminhoDaImagem = caminhoDaImagem
        
    }

}
