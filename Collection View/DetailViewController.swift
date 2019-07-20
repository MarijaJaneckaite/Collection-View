//
//  DetailViewController.swift
//  Collection View
//
//  Created by Marija Janeckaitė on 20/07/2019.
//  Copyright © 2019 Marija Janeckaitė. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var selection: String!
    @IBOutlet weak var detailsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailsLabel.text = selection
    }
    
}
