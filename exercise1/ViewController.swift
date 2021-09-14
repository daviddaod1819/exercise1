//
//  ViewController.swift
//  exercise1
//
//  Created by David on 14/9/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var backwardButton: UIButton!
    @IBOutlet weak var forwardButton: UIButton!
    @IBOutlet weak var thumbsupButton: UIButton!
    @IBOutlet weak var thumbsdownButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var frontImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    var index: Int = 0
    let albums: [Album] = [
        Album(title: "Exile On Main St.", artist: "The Rolling Stones", albumImage: UIImage.init(named: "rollingStones")!),
        Album(title: "Ramones", artist: "Ramones", albumImage: UIImage.init(named: "ramones")!),
        Album(title: "Nirvana", artist: "Nevermind", albumImage: UIImage.init(named: "nirvana")!),
        Album(title: "Bob Dylan", artist: "Blonde on Blonde", albumImage: UIImage.init(named: "bobDylan")!),
        Album(title: "Elvis Presley", artist: "Elvis Presley", albumImage: UIImage.init(named: "elvisPresley")!),
    ]
    
    let url: String = "https://www.amazon.es/Exile-Main-Vinilo-Rolling-Stones/dp/B003AIEOCY/ref=sr_1_1?__mk_es_ES=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=Exile+On+Main+St.&qid=1631614885&sr=8-1"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fillData()
    }

    @IBAction func goBackward(_ sender: UIButton) {
        index = index < 1 ? 4 : index - 1
        
        fillData()
    }
    
    @IBAction func goForward(_ sender: UIButton) {
        index = index > 3 ? 0 : index + 1
        
        fillData()
    }
    
    func fillData() {
        titleLabel.text = "\(albums[index].title) - \(albums[index].artist)"
        frontImageView.image = albums[index].albumImage
    }
    
    @IBAction func openNavigator(_ sender: UIButton) {
        if let url = URL(string: url) {
            UIApplication.shared.open(url)
        }
    }
    
}

