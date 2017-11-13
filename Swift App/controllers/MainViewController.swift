//
//  ViewController.swift
//  Swift App
//
//  Created by Radoslav Hlinka on 11/11/2017.
//  Copyright © 2017 Radoslav Hlinka. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,
UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var emojies : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.emojies = makeEmojiArr()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    func makeEmojiArr() -> [Emoji] {
        
        let e1 = Emoji.init(init:"😀", desc:"Smile face", year:23)
        let e2 = Emoji.init(init:"😊", desc:"Nice face", year:25)
        let e3 = Emoji.init(init:"😢", desc:"Cry face", year:21)
        let e4 = Emoji.init(init:"🐶", desc:"Dogo face", year:23)
        let e5 = Emoji.init(init:"🐥", desc:"Duck face", year: 11)
        let e6 = Emoji.init(init:"🐬", desc:"Doplho face", year:1)
        return [e1,e2,e3,e4,e5,e6]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojies[indexPath.row].eMain
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true )
        performSegue(withIdentifier: "moveSeque", sender: emojies[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DetailViewController
        defVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

