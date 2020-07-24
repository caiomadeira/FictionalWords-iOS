//
//  ViewController.swift
//  FictionalWords
//
//  Created by Caio Madeira on 21/07/20.
//  Copyright © 2020 fictional-words. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {


    @IBOutlet weak var tabelaViagens: UITableView!
    @IBOutlet weak var viewHoteis: UIView!
    @IBOutlet weak var viewPacotes: UIView!
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int//diz qts elementos serao renderizados
    {
        return listaViagens.count //retorna o numero de elementos do array
    }
    

        //Quando implementamos o protocolo UITableViewDataSource, precisamos
    //implementar alguns metodos e um deles eh o numberofsection
//    let listaViagens:Array<String> = ["Columbia", "Snowdin", "Los Santos", "Gothan City", "Couruscant" ]
    let listaViagens: Array<Viagem> = ViagemDAO().retornaTodasAsViagens()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabelaViagens.dataSource = self
        self.tabelaViagens.delegate = self 
        self.viewPacotes.layer.cornerRadius = 20 //cantos arredondados no botao
        self.viewHoteis.layer.cornerRadius = 20 // ''
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    //feito isso, precisamos informar a cell (conteudo) que ela ira mostrar, pra isso
//    temos outro metodo chamado cellforrow
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        let viagemAtual = listaViagens[indexPath.row]
        
        cell.labelTitulop.text = viagemAtual.titulo
        cell.labelQuantidadeDeDias.text = viagemAtual.quantidadeDeDias
        cell.labelPreco.text = "R$\(viagemAtual.preco)" //interpolacao de string
        cell.imagemViagem.image = UIImage(named: viagemAtual.caminhoDaImagem)
        
        cell.imagemViagem.layer.cornerRadius = 10
        cell.imagemViagem.layer.masksToBounds = true //ele coloca uma mascara de recorte c a medida do raio q colocamos na imagem, deixando a imagem arredondada
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 176 // retorna o widght para iphone
        return UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone ? 176 : 280
        // UIDevice eh uma classe que retorna informacoes como por exemplo o nivel de bateria ou qual eh o aparelho usado pelo usuario
    }
    
    
}

