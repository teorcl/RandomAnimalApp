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
    
    static let animals: [String] = ["Perro","Gato","Caballo","Hormiga","Ballena"]
    var randomAnimal = Int.random(in: 0...RandomAnimalViewController.animals.count-1)

    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    
    private func setUI(){
        animalLabel.text = RandomAnimalViewController.animals[randomAnimal]
        animalImageView.image = UIImage(named: RandomAnimalViewController.animals[randomAnimal])
    }

}

