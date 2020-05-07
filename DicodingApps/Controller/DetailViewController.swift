//
//  DetailViewController.swift
//  DicodingApps
//
//  Created by Mochamad Nurkhayal Kadafi on 17/04/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var titleDetail: UILabel!
    @IBOutlet weak var imageDetail: UIImageView!
    @IBOutlet weak var descDetail: UILabel!
    
    var detail : (
        title: String?,
        desc : String?,
        image: UIImage?
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleDetail.text    = detail.title
        descDetail.text     = detail.desc
        imageDetail.image   = detail.image
    }

}
