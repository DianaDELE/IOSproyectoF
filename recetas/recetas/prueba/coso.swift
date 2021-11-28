//
//  coso.swift
//  recetas
//
//  Created by Karen De Luna on 22/11/21.
//

import UIKit

extension UIViewController{
    func configureGradientLayer(){
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.systemCyan.cgColor, UIColor.systemPurple.cgColor]
        //empieza hasta arriba 0, termina hasta abajo 1
        gradient.locations = [0,1]
        view.layer.addSublayer(gradient)
        gradient.frame = view.frame
        //esto es para que se pase debajo de todas las vistas que tenemos
        self.view.layer.insertSublayer(gradient, at: 0)
    }
}
