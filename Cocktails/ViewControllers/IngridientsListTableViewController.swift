//
//  IngridientsListTableViewController.swift
//  Cocktails
//
//  Created by Васильева Ольга on 09.01.2022.
//

import UIKit

class IngridientsListTableViewController: UITableViewController {

    var ingridients: [(Ingridient, Double)]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ingridients.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ingridientCell", for: indexPath)
        
        let ingridientTuple = ingridients[indexPath.row]
        let ingridient = ingridientTuple.0
        let volume = ingridientTuple.1
        
        var content = cell.defaultContentConfiguration()
        content.text = "\(ingridient.title), \(volume) мл"
        content.textProperties.color = .white
        content.image = UIImage(named: ingridient.title)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        cell.contentConfiguration = content
        cell.backgroundColor = .black
        return cell
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        guard let IngridientVC = segue.destination as? IngridientViewController else {return}
        let ingridientTuple = ingridients[indexPath.row]
        IngridientVC.ingridient = ingridientTuple.0
    }
   

}
