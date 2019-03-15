//
//  ViewController.swift
//  Reservation
//
//  Created by Rashmi on 3/14/19.
//  Copyright © 2019 Rash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var reservationsTableView: UITableView!
    
    private struct Constants {
        static let navBarTitle = "MY RESERVATIONS"
        static let rowCount = 1
        static let defaultHeight = 320
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.setUpNavigationBar()
        self.setUpTableView()
    }
    
    //This method will setup the navigation bar with titles and colors
    func setUpNavigationBar() {
        self.navigationItem.title = Constants.navBarTitle
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]

    }
    
    func setUpTableView() {
        
        self.reservationsTableView.delegate = self
        self.reservationsTableView.dataSource = self
        self.reservationsTableView.register(UINib.init(nibName: "ReservationTableViewCell", bundle: nil), forCellReuseIdentifier: "CellFromNib")
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Constants.rowCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let customCell = tableView.dequeueReusableCell(withIdentifier: "CellFromNib", for: indexPath) as? ReservationTableViewCell
        else {
            let faultyCell = UITableViewCell()
            faultyCell.backgroundColor = UIColor.red
            return faultyCell
        }
        return customCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(Constants.defaultHeight)
    }
}

