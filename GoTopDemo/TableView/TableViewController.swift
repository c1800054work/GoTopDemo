//
//  ViewController.swift
//  GoTopDemo
//
//  Created by Peggy Tsai on 2021/8/5.
//

import UIKit

class TableViewController: UIViewController {
    
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableview.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }

    @IBAction func goTopBtnPress(_ sender: UIButton) {
        let indexPath = IndexPath(row: 0, section: 0)
        tableview.scrollToRow(at: indexPath, at: .top, animated: true)
    }
}

extension TableViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.data = indexPath.row
        return cell
    }
}
