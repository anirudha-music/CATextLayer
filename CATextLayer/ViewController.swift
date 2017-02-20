//
//  ViewController.swift
//  CATextLayer
//
//  Created by LA Argon on 20/02/17.
//  Copyright © 2017 LA Argon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        drawTextWithCATextLayer()
    }
    
    func drawTextWithCATextLayer() {
        // create a text layer
        let textLayer = CATextLayer()
        textLayer.frame = self.labelView.bounds
        textLayer.contentsScale = UIScreen.main.scale
        self.labelView.layer.addSublayer(textLayer)
        
        // set the text attribute
        textLayer.foregroundColor = UIColor.black.cgColor
        textLayer.alignmentMode = kCAAlignmentJustified
        textLayer.isWrapped = true
        
        // choose a font
        let font = UIFont(name: "Avenir-Light", size: 15)
        
        // set layer font
        guard let fontName: CFString = font?.fontName as CFString? else {
            return
        }
        
        let fontRef = CGFont(fontName)
        
        textLayer.font = fontRef
        textLayer.fontSize = font!.pointSize
        
        // choose some text
        let text = "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc."
        
        // set layer text
        textLayer.string = text
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

