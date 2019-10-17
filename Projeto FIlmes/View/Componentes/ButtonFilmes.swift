//
//  ButtonFilmes.swift
//  Projeto FIlmes
//
//  Created by Renê Xavier on 19/09/19.
//  Copyright © 2019 IESB. All rights reserved.
//

import UIKit

class ButtonFilmes: UIButton {
    @IBInspectable
    var isCantoArredondado: Bool = false {
        didSet {
            commonInt()
        }
    }
    
    @IBInspectable
    var alturaDaBorda: CGFloat = 0 {
        didSet {
            commonInt()
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        // customizacao
        commonInt()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        // customizacao
        commonInt()
    }
    
    func commonInt() {
        if isCantoArredondado {
            self.layer.cornerRadius = self.layer.frame.height / 2
        }
        
        self.layer.borderWidth = alturaDaBorda
        self.layer.borderColor = UIColor.red.cgColor
    }
}
