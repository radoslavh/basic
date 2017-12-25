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
    
    var viewModel: ViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.viewModel = ViewModel()
        self.emojies = makeEmojiArr()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func makeEmojiArr() -> [Emoji] {
        
        let e1 = Emoji.init(smile: "😀", desc:"Smile face", points:23)
        let e2 = Emoji.init(smile: "😊", desc:"Nice face", points:25)
        let e3 = Emoji.init(smile: "😢", desc:"Cry face", points:21)
        let e4 = Emoji.init(smile: "🐶", desc:"Dogo face", points:23)
        let e5 = Emoji.init(smile: "🐥", desc:"Duck face", points: 11)
        let e6 = Emoji.init(smile: "🐬", desc:"Doplho face", points:1)
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
    
}

