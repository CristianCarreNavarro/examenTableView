//
//  ViewControllerDetail.swift
//  examenTableView
//
//  Created by Cristian Carreño Navarro on 13/03/2019.
//  Copyright © 2019 Cristian Carreño Navarro. All rights reserved.
//

import UIKit

class ViewControllerDetail: UIViewController {

    @IBOutlet weak var imagenDetail: UIImageView!
    @IBOutlet weak var razaDetail: UILabel!
    @IBOutlet weak var tipoDetail: UILabel!
    @IBOutlet weak var descripcionDetail: UITextView!
    
    
    var imagenMariposa:UIImage = UIImage()
    var razaMariposa:String = ""
     var tipoMariposa:String = ""
    var descripcionMariposa:String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagenDetail.image = imagenMariposa
        razaDetail.text = razaMariposa
        tipoDetail.text = tipoMariposa
        descripcionDetail.text = descripcionMariposa
        
        
    }

}
