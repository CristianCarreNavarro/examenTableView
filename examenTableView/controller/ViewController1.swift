//
//  ViewController.swift
//  examenTableView
//
//  Created by Cristian Carreño Navarro on 13/03/2019.
//  Copyright © 2019 Cristian Carreño Navarro. All rights reserved.
//

import UIKit

var listaRazas:[Mariposa] = [
    Mariposa(raza: "Terranova", descripcion: "50-60kg", imagen: UIImage(named: "mariposa1")!),
    Mariposa(raza: "Terranova2", descripcion: "50-60kg", imagen: UIImage(named: "mariposa1")!),
    Mariposa(raza: "Terranova3", descripcion: "50-60kg", imagen: UIImage(named: "mariposa1")!),
    Mariposa(raza: "Terranova4", descripcion: "50-60kg", imagen: UIImage(named: "mariposa1")!)]

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

