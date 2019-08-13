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
    
    @IBOutlet weak var textNuevaPelicula: UITextField!
    
    @IBOutlet weak var textNuevaImagen: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        arrayPeliculas = FuenteDatos().fuenteDatos()
        
    }
    @IBAction func procesarCambios(_ sender: Any) {
        
//       self.procesarCambios = UISegmentedControl(items: self.arrayPeliculas)
        
        
        let indexSelected = miSegment.selectedSegmentIndex
        let objPelicula = arrayPeliculas[indexSelected]
        
        let nombrePelicula = objPelicula["Kpeliculas"]
        let imagePelicula = objPelicula["Kimage"]
        
        textTitulo.text = nombrePelicula
        contenedorImage.image = UIImage(named: imagePelicula!)
        
    }
    
    @IBAction func agregarPelicula(_ sender: Any) {
        
        let nPelicula = textNuevaPelicula.text ?? ""
        
        let nImage = textNuevaImagen.text ?? ""
        
        
        let keydata = "Kpeliculas"
        let dato = "Simpson"
        
//        diccionarioPeliculas[keydata] = dato
        
//        let p3 = ["Kpeliculas":"Simpson", "Kimage":"simpson"]
        
        arrayPeliculas.append([keydata : dato])
        
        print(arrayPeliculas)
        
        
        
       
        
        
        
        
    
       
        
        
    }
    
   
    
    
}



