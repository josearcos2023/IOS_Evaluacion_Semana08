//
//  ViewController.swift
//  PracticaExamen
//
//  Created by Mac13 on 27/04/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let posts: [Pokemon] = [
        Pokemon(name: "Bulbasaur", type: "plant", imagePrincipal: "bulbasaur", detalles: "detalles extra 1"),
        Pokemon(name: "Charmander", type: "fire", imagePrincipal: "charmander", detalles: "detalles extra 2"),
        Pokemon(name: "Pikachu", type: "electric", imagePrincipal: "pikachu", detalles: "detalles extra 3"),
        Pokemon(name: "Squirtle", type: "water", imagePrincipal: "squirtle", detalles: "detalles extra 4"),
        Pokemon(name: "Mew", type: "psyquic", imagePrincipal: "mew", detalles: "detalles extra 1"),
        Pokemon(name: "Blastoise", type: "water", imagePrincipal: "blastoise", detalles: "detalles extra 2"),
        Pokemon(name: "Abra", type: "psyquic", imagePrincipal: "abra", detalles: "detalles extra 3"),
        Pokemon(name: "Cleafy", type: "normal", imagePrincipal: "cleafy", detalles: "detalles extra 4"),
        Pokemon(name: "Venusaur", type: "plant", imagePrincipal: "venusaur", detalles: "detalles extra 3"),
        Pokemon(name: "Charizard", type: "fire", imagePrincipal: "charizard", detalles: "detalles extra 4"),
    ]

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PokemonTableViewCell
        
        let posts = posts[indexPath.row]
        cell.name.text=posts.name
        cell.type.text=posts.type
        cell.imagePrincipal.image=UIImage(named: posts.imagePrincipal)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedPost = posts[indexPath.row]
        self.performSegue(withIdentifier: "segueDetails", sender: selectedPost)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueDetails" {
            if let selectedPost = sender as? Pokemon {
                let secondView: DetailsViewController = segue.destination as! DetailsViewController
                secondView.type = selectedPost.type
                secondView.name = selectedPost.name
                secondView.details = selectedPost.detalles
                let imageName = selectedPost.imagePrincipal
                secondView.imagePrincipal = UIImage(named: imageName)
                
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource=self
        tableView.delegate=self
    }
}

