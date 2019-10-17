//
//  TextFieldComLinhaEmBaixo.swift
//  Projeto FIlmes
//
//  Created by Renê Xavier on 19/09/19.
//  Copyright © 2019 IESB. All rights reserved.
//

import UIKit

class TextFieldComLinhaEmBaixo: UITextField {
    @IBInspectable
    var alturaDaLinha: CGFloat = 2 {
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
        
        let retanguloDaLinha = CGRect(x: 0, y: self.layer.frame.height - alturaDaLinha, width: self.layer.frame.width, height: alturaDaLinha)
        let view = UIView(frame: retanguloDaLinha)
        view.backgroundColor = .red
        self.addSubview(view)
    }
}
