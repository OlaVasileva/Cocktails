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
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
