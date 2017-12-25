//
//  DetailViewController.swift
//  Swift App
//
//  Created by Radoslav Hlinka on 12/11/2017.
//  Copyright © 2017 Radoslav Hlinka. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var emoji : Emoji = Emoji.init(smile: "asd", desc: "asd", points: 0)
    
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var emojiDesc: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var threeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji.eMain
        emojiDesc.text = emoji.desc
        secondLabel.text = "Year \(emoji.points)"
    }
}
