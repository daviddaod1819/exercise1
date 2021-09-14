//
//  Album.swift
//  exercise1
//
//  Created by David on 14/9/21.
//

import UIKit

class Album {
    let title: String
    let artist: String
    let albumImage: UIImage
    
    init(title: String, artist: String, albumImage: UIImage) {
        self.title = title
        self.artist = artist
        self.albumImage = albumImage
    }
}
