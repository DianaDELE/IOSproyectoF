//
//  pTableViewController.swift
//  recetas
//
//  Created by Karen De Luna on 28/11/21.
//

import UIKit

class pTableViewController: UITableViewController {
    
    let otras = ["sandwich", "arroz","filete de pescado", "pasta con atùn","sopa"]
    var ind = 0
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = UITableViewCell()
        ind+=1
        if(ind>=otras.count){
            ind = 0
        }
        celda.textLabel?.text = otras[ind]
        return celda
    }

   
}
