//
//  CocktailsListViewController.swift
//  Cocktails
//
//  Created by Васильева Ольга on 06.01.2022.
//

import UIKit

class CocktailsListViewController: UITableViewController {
    
    private var cocktailsList: [Cocktail] = Cocktail.getCocktailsList()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
        tableView.backgroundColor = .black
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cocktailsList.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cocktailTitle", for: indexPath)

        let cocktail = cocktailsList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = cocktail.title
        content.textProperties.color = .white
        
        //content.secondaryText = cocktail.ingridients
        content.image = UIImage(named: cocktail.title)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        
        cell.contentConfiguration = content
        cell.backgroundColor = .black
        
        return cell
    }
  
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        //let cocktail = cocktailsList[indexPath.row]
        //performSegue(withIdentifier: "showDetails", sender: cocktail)
    }
    
//    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
//        .none
//    }
    
//    override func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
//        false
//    }
    
//    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
//        let currentTrack = cocktailsList.remove(at: sourceIndexPath.row)
//        cocktailsList.insert(currentTrack, at: destinationIndexPath.row)
//    }
   // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        let cocktail = cocktailsList[indexPath.row]
        
        guard let tabBarConroller = segue.destination as? UITabBarController else {
            return
        }
        let viewControllers = tabBarConroller.viewControllers!
        for viewController in viewControllers {
            if let DescriptionsCocktailsVC = viewController as? DescriptionsCocktailsViewController{
                DescriptionsCocktailsVC.cocktail = cocktail
            } else if let navigationVC = viewController as? UINavigationController {
                let ingridientsListVC = navigationVC.topViewController as! IngridientsListTableViewController
                ingridientsListVC.ingridients = cocktail.ingridients
            }
        }
        
    }

}
