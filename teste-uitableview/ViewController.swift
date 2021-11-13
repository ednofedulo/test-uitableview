//
//  ViewController.swift
//  teste-uitableview
//
//  Created by Edno Fedulo on 13/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var mainTableView: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.delegate = self
        table.dataSource = self
        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
    
        addSubViews()
        setupTableView()
    }
    
    private func addSubViews(){
        self.view.addSubview(mainTableView)
        
        NSLayoutConstraint.activate([
            mainTableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            mainTableView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            mainTableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            mainTableView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }

    private func setupTableView(){
        mainTableView.register(UINib(nibName: "SmallTableViewCell", bundle: nil), forCellReuseIdentifier: "smallCell")
        mainTableView.register(UINib(nibName: "MediumTableViewCell", bundle: nil), forCellReuseIdentifier: "mediumCell")
        mainTableView.register(UINib(nibName: "LargeTableViewCell", bundle: nil), forCellReuseIdentifier: "largeCell")
    }

}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        switch indexPath.row {
        case 0:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "smallCell", for: indexPath) as? SmallTableViewCell {
                return cell
            }
        case 1:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "mediumCell", for: indexPath) as? MediumTableViewCell {
                return cell
            }
        case 2:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "largeCell", for: indexPath) as? LargeTableViewCell {
                return cell
            }
        default:
            return UITableViewCell()
        }
        
        return UITableViewCell()
    }
    
    
}

