//
//  UnitsViewController.swift
//  MegaCleanUikit
//
//  Created by Subash Sethuraman A on 22/10/24.
//

import UIKit

class UnitsViewController: UIViewController, PresenterToViewUnitsProtocol {
   
    var presenter : ViewToPresenterUnitsProtocol?
    let tableView = UITableView(frame: .zero, style: .grouped)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureTableView()
        presenter?.viewDidLoad()
//        lbl.text = presenter?.fetchList()
    }
}

extension UnitsViewController : UITableViewDelegate, UITableViewDataSource {
   
    
   
    func configureTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.bounces = false
        tableView.separatorInset = .zero
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)
        
        let tbConstraints = [
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 8),
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 32),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 24)
        ]
        NSLayoutConstraint.activate(tbConstraints)
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(frame: .zero)
        cell.textLabel?.text = presenter?.fetchList()[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter?.fetchList().count ?? 1
    }
}
