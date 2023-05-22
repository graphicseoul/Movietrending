//
//  MainViewController.swift
//  Movietrending
//
//  Created by BCS on 5/22/23.
//

import UIKit

class MainViewController: UIViewController {

    //IBoutlets:
    @IBOutlet weak var tableView: UITableView!
    
    //ViewModel:
    var viewModel: MainViewModel = MainViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configView()
    }

    func configView() {
        self.title = "Main View"
        self.view.backgroundColor = .systemRed
        
        setupTableView()
    }

}
