//
//  ScrollViewController.swift
//  GoTopDemo
//
//  Created by Peggy Tsai on 2021/8/5.
//

import UIKit

class ScrollViewController: UIViewController {

    @IBOutlet weak var scrollview: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func goTopBtnPress(_ sender: UIButton) {
        scrollview.setContentOffset(.zero, animated: true)
    }
}
