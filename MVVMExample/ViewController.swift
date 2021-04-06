//
//  ViewController.swift
//  MVVMExample
//
//  Created by Elisa Camillo on 04/04/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    private var models = [Person]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = models[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: PersonFollowingTableViewCell.identifier	, for: indexPath)
        cell.textLabel?.text = model.name
        return cell
    }
    

    private let tableView: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: PersonFollowingTableViewCell.identifier)
        return table
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureModels()
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.frame = view.bounds
    }
    
    private func configureModels() {
        let names = ["Joe", "Dan", "Jeff", "Jenny", "Emily"]
        
        for name in names {
            models.append(Person(name: name))
        }
    }


}

