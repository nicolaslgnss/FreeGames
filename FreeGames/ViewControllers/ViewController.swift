//
//  ViewController.swift
//  FreeGames
//
//  Created by Turno Mañanas on 23/11/2026.
//

import UIKit

class ViewController: UIViewController {
    
    var gameList: [Game] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Task {
            // Llamada en un hilo secundario o tarea asíncrona
            gameList = await FreeToGameApi.getGamesList()
            
            DispatchQueue.main.async {
                // Ya puedo tocar la vista aquí
                print(self.gameList)
            }
        }
    }
}
