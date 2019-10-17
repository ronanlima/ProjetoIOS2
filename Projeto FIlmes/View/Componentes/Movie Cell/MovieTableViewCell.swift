//
//  MovieTableViewCell.swift
//  Projeto FIlmes
//
//  Created by Renê Xavier on 26/09/19.
//  Copyright © 2019 IESB. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    @IBOutlet var poster: UIImageView!
    @IBOutlet var titulo: UILabel!
    @IBOutlet var tagline: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
