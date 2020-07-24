//
//  ViagemDAO.swift
//  FictionalWords
//
//  Created by Caio Madeira on 21/07/20.
//  Copyright © 2020 fictional-words. All rights reserved.
//

import UIKit

class ViagemDAO: NSObject{
    
    func retornaTodasAsViagens() -> Array<Viagem> {
        
        let columbia = Viagem(titulo: "Columbia", quantidadeDeDias: "3 dias", preco: "1.800,00", caminhoDaImagem: "columbia")
        
        let couruscant = Viagem(titulo: "Couruscant", quantidadeDeDias: "6 dias", preco: "1.200,00", caminhoDaImagem: "couruscant")
        
        let gothan = Viagem(titulo: "Gotham", quantidadeDeDias: "1 dia", preco: "800,00", caminhoDaImagem: "gotham")
        
        let lossantos = Viagem(titulo: "Los Santos", quantidadeDeDias: "3 dias", preco: "1.800,00", caminhoDaImagem: "lossantos")
        
        let snowdin = Viagem(titulo: "Snowdin", quantidadeDeDias: "4 dias", preco: "10,00", caminhoDaImagem: "snowdin")
        
        let republica = Viagem(titulo: "Republica", quantidadeDeDias: "2 dias", preco: "1.900,00", caminhoDaImagem: "republica")
        
        let konoha = Viagem(titulo: "Konoha", quantidadeDeDias: "4 dias", preco: "2.300,00", caminhoDaImagem: "konoha")
        
        let listaViagens:Array<Viagem> = [columbia, snowdin, lossantos, couruscant, gothan, republica, konoha ]
        
        return listaViagens
        
    }
    
    
    
    
    
    
}
