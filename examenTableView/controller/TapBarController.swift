//
//  UITapBarControllerViewController.swift
//  examenTableView
//
//  Created by Cristian Carreño Navarro on 13/03/2019.
//  Copyright © 2019 Cristian Carreño Navarro. All rights reserved.
//

import UIKit

class TapBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

   
        
        
        // cambiamos el color si esta seleccionado o no Ajustes comunes del TabBar.
        UITabBar.appearance().barTintColor = UIColor.black
        
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.yellow], for: .selected)
        
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.red], for: .normal)
        
        
        print(self.tabBar.items?.count as Any)
        //Modificar cada elemento del TapBar
        
        //HOME
        tabBarItem = self.tabBar.items![0]
        tabBarItem.image =
            UIImage(named: "iconoHome.png")?.withRenderingMode(.alwaysOriginal)
        tabBarItem.selectedImage =
            UIImage(named:"iconoHometocado.png")?.withRenderingMode(.alwaysOriginal)
        tabBarItem.title = "home"
        //SEARCH
        tabBarItem = self.tabBar.items![1]
        tabBarItem.image =
            UIImage(named: "iconoSearch.png")?.withRenderingMode(.alwaysOriginal)
        tabBarItem.selectedImage =
            UIImage(named:"iconoSearchtocado.png")?.withRenderingMode(.alwaysOriginal)
        tabBarItem.title = "search"
   
    }
    
    
    
    
}
