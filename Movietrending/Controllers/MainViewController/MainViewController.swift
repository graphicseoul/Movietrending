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
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    //ViewModel:
    var viewModel: MainViewModel = MainViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configView()
        bindViewModel()
    }

    func configView() {
        self.title = "Main View"
        self.view.backgroundColor = .systemRed
        
        setupTableView()
    }
    
    func bindViewModel() {
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        viewModel.getData()
    }

}
