//
//  ViewController.swift
//  Cells
//
//  Created by Jared Thomas on 6/2/20.
//  Copyright © 2020 Jared Thomas. All rights reserved.
//

import UIKit

// Accesory Type
// Accesory view
// cell Height
// Images


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // set up basic table view object
    private let tableView = UITableView()


    override func viewDidLoad() {
        super.viewDidLoad()
        // MARK: -
        // refer to self as class - ID
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        // iterate tableView -> UITableViewDelegate, UITableviewDataSource in class ViewController, then set up funcs
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    // give tableview a frame of the full page
    override func viewDidLayoutSubviews() {
        // call parent
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }

    // two minmum funcs required for Delegate and Datasource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // return index path
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        // call cell ^ to adjust cell attributes
        /* example where a cell will house an excessive amount of content, 0 = inifinite
         cell.textLabel?.text = "Hello World, Cell World, Cell World, Cell WorCell WorldCell WorldCell WorldCell
         WorldCell WorldCell World,Cell WorldCell WorldCell WorldCell WorldCell WorldCell WorldCell WorldCell WorldCell
         WorldCell WorldCell WorldCell WorldCell World"*/
        cell.imageView?.image = UIImage(systemName: "bookmark")
        cell.textLabel?.numberOfLines = 0
        //        cell.backgroundColor = .link
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = .link
        } else {
            cell.backgroundColor = .red
        }
        return cell
    }
    
    // OTHER EXs
    
    //    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    //        if indexPath.row % 2 == 0 {
    //            return 50
    //        }
    //        return 100
    //    }
    
    //        // will edit in green checkmark - on boarding
    //        cell.accessoryType = .none
    //        // way of outputing .disclosureIndicator every other cell
    //        if indexPath.row % 2 == 0 {
    //            let _switch = UIView()
    //            _switch.backgroundColor = .red
    //            // needs frame to display
    //            // width: 100, height: 35 will center object's frame
    //            _switch.frame = CGRect(x: 0, y: 0, width: 100, height: 35)
    //            cell.accessoryView = _switch
}







