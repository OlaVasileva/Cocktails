//
//  DescriptionsCocktailsViewController.swift
//  Cocktails
//
//  Created by Васильева Ольга on 06.01.2022.
//

import UIKit

class DescriptionsCocktailsViewController: UIViewController {

    @IBOutlet weak var imageCocktail: UIImageView!
    @IBOutlet weak var method: UILabel!
    @IBOutlet weak var garnish: UILabel!
    @IBOutlet weak var descriptions: UILabel!
    
    var cocktail: Cocktail!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = cocktail.title
        method.text = cocktail.method
        garnish.text = cocktail.garnish
        descriptions.text = cocktail.description
        imageCocktail.image = UIImage(named: cocktail.title)
    }

}
