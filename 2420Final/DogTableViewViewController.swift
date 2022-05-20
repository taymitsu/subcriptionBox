//
//  ItemViewController.swift
//  2420Final
//
//  Created by Tay Mitsumori on 5/20/22.
//

import Foundation
import UIKit

let tableView =  UITableView()

 let dogs = [
        Dog(title: "Arty"),
        Dog(title: "Dax"),
        Dog(title: "Leia"),
        Dog(title: "Tyson")
]

class DogTableViewViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(DogCell.self, forCellReuseIdentifier: "cell")
    }
}
    
extension DogTableViewViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = storyBoard.instantiateViewController(withIdentifier: "DogTableViewViewController") as? DogTableViewViewController else { return }
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dogs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! DogCell
            cell.setCellContents(item: dogs[indexPath.row])
            cell.accessoryType = .disclosureIndicator
            cell.selectionStyle = .none
        return cell
    }
}
