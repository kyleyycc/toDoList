//
//  toDoTableViewController.swift
//  toDoList
//
//  Created by Hayley Chang on 7/19/21.
//

import UIKit

class toDoTableViewController: UITableViewController {
    var toDos : [ToDo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        toDos = createToDos ()
    
    }
    func createToDos () -> [ToDo]{
        let swift = ToDo ()
        swift.name = "Learn Swift"
        swift.important = true
        
        let dog = ToDo ()
        dog.name = "Walk the Dog"
        //dog.important = false
        return [swift, dog]
    }
    // MARK: - Table view data source


    /*override func numberOfSections(in tableView: UITableView) -> Int {
            // #warning Incomplete implementation, return the number of sections
        return toDos.count
        }*/

        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            // #warning Incomplete implementation, return the number of rows
            return toDos.count
        }


        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

            // Configure the cell...
            let toDo = toDos [indexPath.row]
            
            if toDo.important {
                cell.textLabel?.text = "!" + toDo.name
            }

            return cell
        }

        // MARK: - Navigation

        // In a storyboard-based application, you will often want to do a little preparation before navigation
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            // Get the new view controller using segue.destination.
            // Pass the selected object to the new view controller.
        }
}
