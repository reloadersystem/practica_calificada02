//
//  ViewController.swift
//  Calificada02
//
//  Created by Resembrink Correa Egoavil on 8/11/19.
//  Copyright © 2019 Resembrink Correa Egoavil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var arrayPeliculas = [[String:String]]()
    
    
    @IBOutlet weak var miSegment: UISegmentedControl!
    @IBOutlet weak var textTitulo: UILabel!
    
    @IBOutlet weak var contenedorImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        arrayPeliculas = FuenteDatos().fuenteDatos()
        
    }
    @IBAction func procesarCambios(_ sender: Any) {
        
        let indexSelected = miSegment.selectedSegmentIndex
        let objPelicula = arrayPeliculas[indexSelected]
        
        let nombrePelicula = objPelicula["Kpeliculas"]
        let imagePelicula = objPelicula["Kimage"]
        
//        let descripcion = \(nombrePelicula)
        
        textTitulo.text = nombrePelicula
        contenedorImage.image = UIImage(named: imagePelicula!)
        
        
//        print(descripcion)
        
    }
    

}

