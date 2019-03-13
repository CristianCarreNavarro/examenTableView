//
//  ViewController.swift
//  examenTableView
//
//  Created by Cristian Carreño Navarro on 13/03/2019.
//  Copyright © 2019 Cristian Carreño Navarro. All rights reserved.
//

import UIKit


var listaRazas:[Mariposa] = [
    Mariposa(raza: "Monarca", tipo: "Ledidóptera", imagen: UIImage(named: "monarca")!, descripcion: "Algunos dicen que las mariposas monarca son las más bellas entre todas las especies, son consideradas como el rey de las mariposas, de ahí el nombre de “monarca”."),
    Mariposa(raza: "Morpho Azul", tipo: "Ledidóptera", imagen: UIImage(named: "morphoAzul")!, descripcion: "Existen decenas de miles de especies de mariposas en el mundo, una de las más bellas son las mariposas morpho azules, muy buscadas por coleccionistas y personas en general que desean admirar el maravilloso color de sus cuerpos."),
    Mariposa(raza: "Alas de Pájaro", tipo: "Ledidóptera", imagen: UIImage(named: "alasPajaro")!, descripcion: "La mariposa Alas de Pájaro es la más grande de las mariposas en el mundo, con una envergadura de hasta 30 cm de ancho."),
    Mariposa(raza: "Tigre", tipo: "Ledidóptera", imagen: UIImage(named: "tigre")!, descripcion: "La mariposa tigre es una fuerte voladora que posee marcas distintivas en forma de rayas amarillas y negras en las alas y el cuerpo. Algunas hembras son de color marrón o negro, imitando a la mariposa tigre."),
    Mariposa(raza: "Ulises", tipo: "Ledidóptera", imagen: UIImage(named: "ulises")!, descripcion: "La mariposa Ulises es también conocida como la mariposa azul de montaña, el emperador azul y mariposa golondrina azul. "),
    Mariposa(raza: "Azul común", tipo: "Ledidóptera", imagen: UIImage(named: "azulComun")!, descripcion: "A pesar de su nombre a esta especie ya no se le considera una mariposa común. Todavía sigue siendo la más distribuida en Gran Bretaña, pero muchas colonias de hábitats como paseos en bosques y tierras de cultivo han disminuido su población."),
    Mariposa(raza: "Cebra", tipo: "Ledidóptera", imagen: UIImage(named: "cebra")!, descripcion: "La mariposa cebra es una mariposa común con marcas distintivas en blanco y negro, de cola alargada en sus alas posteriores, con algunas pequeñas marcas rojas y azules en la parte posterior de las alas y márgenes fuertemente ondulados.")
]



class ViewController1: UIViewController,UITableViewDataSource,UITableViewDelegate {

    
    
    @IBOutlet weak var tableView: UITableView!
    
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
     
    }

    //TAMAÑO CELDA
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    
    //NÚMERO DE COLUMNAS
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return listaRazas.count
    }
    
    
    //QUE HAY DENTRO DE CADA ROW
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //enlace con la celda para poder entrar en todas las propiedades de la Celda
        let myCell = tableView.dequeueReusableCell(withIdentifier: "CellMariposa", for: indexPath)as! TableViewCell
        
        myCell.imagenCell.image = listaRazas[indexPath.row].imagen
        myCell.nombreCell?.text = listaRazas[indexPath.row].raza
        myCell.tipoCell?.text = listaRazas[indexPath.row].tipo

        return myCell
    }
    
    //FUNCIÓN AL CLICKAR UNA ROW
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let detailView = storyboard!.instantiateViewController(withIdentifier: "detail") as! ViewControllerDetail
        
        
        detailView.imagenMariposa = listaRazas[indexPath.row].imagen
        detailView.razaMariposa = listaRazas[indexPath.row].raza
        detailView.descripcionMariposa = listaRazas[indexPath.row].descripcion
        
        let backItem = UIBarButtonItem()
        backItem.title = "Volver"
        navigationItem.backBarButtonItem = backItem
        
        self.navigationController?.pushViewController(detailView, animated: true)
        
    }
    
}

