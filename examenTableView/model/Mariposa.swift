//
//  Mariposa.swift
//  examenTableView
//
//  Created by Cristian Carreño Navarro on 13/03/2019.
//  Copyright © 2019 Cristian Carreño Navarro. All rights reserved.
//

import Foundation
import UIKit

class Mariposa{
    
    var raza: String
    var tipo: String
    var descripcion: String
    var imagen: UIImage
      var isLiked:Bool

    
    init(raza:String,tipo: String,imagen: UIImage,descripcion: String,isLiked:Bool){
        
        self.raza = raza
        self.tipo = tipo
        self.descripcion = descripcion
        self.imagen = imagen
         self.isLiked = isLiked
     
    }
    

    
}
