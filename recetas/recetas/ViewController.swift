//
//  ViewController.swift
//  recetas
//
//  Created by Karen De Luna on 21/11/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var comida: UIImageView!
    @IBOutlet weak var instrucciones: UILabel!
    @IBOutlet weak var inst: UIImageView!
    @IBOutlet weak var postres: UIImageView!
    @IBOutlet weak var instp: UIImageView!
    
    let listaElementos = ["salmon", "salomon2","res", "pizza"]
    let rec = ["salmòn con verduras","salmòn con hierbas","res con verduras","pizza"]
    let listaRec = ["salmonver", "salmonhi", "res-1", "pizza-2","pizza-2"]
    var indice = 0
    
    func actualiza(){
        instrucciones.text = ""
        inst.image = UIImage(named: "pizza-2")
        let nombreElemento = listaElementos[indice]
        let imagen = UIImage(named: nombreElemento)
        comida.image = imagen
    }


    @IBAction func mostrar(_ sender: UIButton) {
        instrucciones.text = rec[indice]
        let nombreElemento2 = listaRec[indice]
        let imagen2 = UIImage(named: nombreElemento2)
        inst.image = imagen2
    }
    
    @IBAction func siguiente(_ sender: UIButton) {
        indice+=1
        if(indice>=listaElementos.count){
            indice = 0
        }
        actualiza()
    }
    
    func configureUI(){
        configureGradientLayer()
    }
    
    @IBAction func pico(){
        let si = pTableViewController()
        navigationController?.pushViewController(si, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        actualiza()
        configureUI()
        pico()
        // Do any additional setup after loading the view.
    }
}

