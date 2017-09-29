//
//  ViewController.swift
//  PullDownRefresh
//
//  Created by Kalyan Vishnubhatla on 9/27/17.
//  Copyright © 2017 Kalyan Vishnubhatla. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    let loadingView : LoadingView = {
        return LoadingView()
    } ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tableView.addSubview(self.loadingView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        self.loadingView.didScroll(scrollView)
    }
}
