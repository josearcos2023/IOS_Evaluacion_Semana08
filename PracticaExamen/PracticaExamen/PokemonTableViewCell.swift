//
//  PokemonTableViewCell.swift
//  PracticaExamen
//
//  Created by Mac13 on 27/04/24.
//

import UIKit

class PokemonTableViewCell: UITableViewCell {

    
    @IBOutlet weak var imagePrincipal: UIImageView!
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var type: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
