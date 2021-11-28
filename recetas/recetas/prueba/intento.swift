//
//  intento.swift
//  recetas
//
//  Created by Karen De Luna on 28/11/21.
//

import UIKit
 
class pruebaaa: UIViewController, UITableViewDelegate, UITableViewDataSource {
 
    let exercisesList = ["PUSHUPS", "RUNNING 100 M", "PULLUPS", "SITUPS", "RUNNING 400 M", "CLIMBERS"]
 
    override func viewDidLoad() {
       super.viewDidLoad()
       // Do any additional setup after loading the view, typically from a nib.
    }
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return exercisesList.count
    }
 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
 
       let cell = tableView.dequeueReusableCell(withIdentifier: "hola", for: indexPath) as! inteto1TableViewCell
 
       cell.labelCell.text = exercisesList[indexPath.row]
       cell.imageCell.image = UIImage(named: exercisesList[indexPath.row])
 
       return cell
    }
 
    override func didReceiveMemoryWarning() {
       super.didReceiveMemoryWarning()
       // Dispose of any resources that can be recreated.
    }
}
