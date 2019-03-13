//
//  ViewController2.swift
//  examenTableView
//
//  Created by Cristian Carreño Navarro on 13/03/2019.
//  Copyright © 2019 Cristian Carreño Navarro. All rights reserved.
//

import UIKit

class ViewController2: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listaRazas.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellCollection", for: indexPath) as! CollectionCell
        
        myCell.labelCollectionCell.text = listaRazas[indexPath.row].raza
          myCell.labelTipoCollectionCell.text = listaRazas[indexPath.row].tipo
        myCell.imagenCollectionCell.image = listaRazas[indexPath.row].imagen
        
        return myCell
        
        
    }


}
