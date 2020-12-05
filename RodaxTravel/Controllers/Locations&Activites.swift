//
//  Locations&ActivitesScene.swift
//  RodaxTravel
//
//  Created by Student on 11/3/20.
//  Copyright © 2020 Student. All rights reserved.
//

import UIKit

class Locations_Activites: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var table: UITableView!
    @IBOutlet var label: UILabel!
    
    var models: [(title: String, note: String)] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
        title = "Notes"
        
        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBAction func didTapNewNote() {
        guard let vc = storyboard?.instantiateViewController(identifier: "New") as? CreateNewLists else {
            return
        }
        vc.title = "New Note"
        vc.navigationItem.largeTitleDisplayMode = .never
        vc.completion = { noteTitle, note in
            self.models.append((title: noteTitle, note: note))
            self.label.isHidden = true
            self.table.isHidden = false

            self.table.reloadData()
        }
        navigationController?.pushViewController(vc, animated: true)
    }
    
    //Table
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = models[indexPath.row].title
        cell.detailTextLabel?.text = models[indexPath.row].note
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let model = models[indexPath.row]
        
        
        // Show note controller
        
        guard let vc = storyboard?.instantiateViewController(identifier: "note") as? ListsofLocations_Activites else {
            return
        }
        vc.navigationItem.largeTitleDisplayMode = .never
        vc.title = "Note"
        vc.noteTitle = model.title
        vc.note = model.note
        navigationController?.pushViewController(vc, animated: true)
    }
    //Code that lets you delete Row
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowat indexPath: IndexPath) {
    if editingStyle == .delete {
        tableView.beginUpdates()
        models.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .fade)
        tableView.endUpdates()
    }
    
    }
    
  
}
