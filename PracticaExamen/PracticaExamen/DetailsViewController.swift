//
//  DetailsViewController.swift
//  PracticaExamen
//
//  Created by Mac13 on 4/05/24.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var name: String?
    var type: String?
    var imagePrincipal: UIImage?
    var details: String?
    var imageLike: UIImage?
    var imageDislike: UIImage?
    var imageShare: UIImage?
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var imgPrincipal: UIImageView!
    
    @IBOutlet weak var lblType: UILabel!
    
    @IBOutlet weak var lblDetails: UILabel!
    
    @IBOutlet weak var imgLike: UIImageView!
    
    @IBOutlet weak var imgDislike: UIImageView!
    
    @IBOutlet weak var imgShare: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblName.text = name!
        lblType.text = type!
        imgPrincipal.image = imagePrincipal
        imgLike.image = UIImage(named: "likeIcon")
        imgDislike.image = UIImage(named: "dislikeIcon")
        imgShare.image = UIImage(named: "shareIcon")
        lblDetails.text = details!
        

    }
}
