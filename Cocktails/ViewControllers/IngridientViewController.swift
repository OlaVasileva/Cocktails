//
//  IngridientViewController.swift
//  Cocktails
//
//  Created by Васильева Ольга on 09.01.2022.
//

import UIKit

class IngridientViewController: UIViewController {
    
    @IBOutlet weak var imageIngridient: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    var ingridient: Ingridient!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = ingridient.title
        imageIngridient.image = UIImage(named: ingridient.title)
        descriptionLabel.text = ingridient.description
    }
    


}
