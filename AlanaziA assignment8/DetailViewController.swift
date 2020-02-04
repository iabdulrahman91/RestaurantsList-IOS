//
//  DetailViewController.swift
//  AlanaziA assignment8
//
//  Created by abdulrahman alanazi on 3/12/19.
//  Copyright © 2019 abdulrahman alanazi. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var img: UIImageView!
    

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label = detailDescriptionLabel {
                label.text = restList[detail]
                if let image = img {
                    image.image = UIImage(named: "\(detail%5)")
                }
            }
            
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    var detailItem: Int? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

