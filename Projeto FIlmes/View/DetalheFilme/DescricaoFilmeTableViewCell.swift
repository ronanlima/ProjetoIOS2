//
//  DescricaoFilmeTableViewCell.swift
//  Projeto FIlmes
//
//  Created by Ronan Lima on 03/10/19.
//  Copyright © 2019 IESB. All rights reserved.
//

import UIKit

class DescricaoFilmeTableViewCell: UITableViewCell {

    @IBOutlet weak var genero: UILabel!
    @IBOutlet weak var descricao: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
