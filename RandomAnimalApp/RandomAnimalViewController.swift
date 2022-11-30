//
//  RandomAnimalViewController.swift
//  RandomAnimalApp
//
//  Created by TEO on 26/11/22.
//

import UIKit

class RandomAnimalViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var animalImageView: UIImageView!
    @IBOutlet weak var animalLabel: UILabel!
    
    let animals: [String] = ["Perro","Gato","Caballo","Hormiga","Ballena","Paloma"]

    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    
    private func setUI(){
        let animal = getAnimal()
        animalLabel.text = animal
        animalImageView.image = UIImage(named: animal)
    }
    
    private func getAnimal() -> String {
        return animals[getRandomAnimal()]
    }

    private func getRandomAnimal() -> Int {
        return Int.random(in: 0...animals.count-1)
    }
}

