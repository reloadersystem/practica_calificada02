//
//  FuenteDatos.swift
//  Calificada02
//
//  Created by Resembrink Correa Egoavil on 8/11/19.
//  Copyright © 2019 Resembrink Correa Egoavil. All rights reserved.
//

import Foundation

class FuenteDatos {
    
    func fuenteDatos()->[[String:String]]{
    
        let p1 = ["Kpeliculas":"Srcheck", "Kimage":"shrek"]
        let p2 = ["Kpeliculas":"capitan", "Kimage":"capitan"]
        
        var arraypeliculas = [p1, p2]
        let p3 = ["Kpeliculas":"Simpson", "Kimage":"simpson"]
        
        var diccionarioPeliculas = [String : String]()
        
        
        
        let keydata = "Kpeliculas"
        let dato = "park"
        
        diccionarioPeliculas[keydata] = dato
         print(diccionarioPeliculas)
        
        
        
//        arraypeliculas.append(p3)
        arraypeliculas.insert(p3, at: 0)
        print(arraypeliculas)
        
        
        
//        var keys = Array(p1.keys)
//        var values = Array(p1.values)
//        print(keys)
//        print(p1.count)
//        print(arraypeliculas.count)
        return arraypeliculas
        
        for (key,value) in p1
        {
            print("llave: \(p1)")
        }
        
        }
}
