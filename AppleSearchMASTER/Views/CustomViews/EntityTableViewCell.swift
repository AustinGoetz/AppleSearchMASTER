//
//  EntityTableViewCell.swift
//  AppleSearchMASTER
//
//  Created by Austin Goetz on 9/23/20.
//

import UIKit

class EntityTableViewCell: UITableViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var artworkImageView: UIImageView!
    @IBOutlet weak var trackNameLabel: UILabel!
    @IBOutlet weak var artistDescriptionLabel: UILabel!
    
    // MARK: - Properties
    var musicTrack: MusicTrack?
    var appItem: AppItem?
    
    // MARK: - Helper Functions/Methods
    func updateViews() {
        var url: URL?
        
        if let musicTrack = musicTrack {
            trackNameLabel.text = musicTrack.trackName
            artistDescriptionLabel.text = musicTrack.artistName
            url = musicTrack.artworkUrl100
        } else if let appItem = appItem {
            trackNameLabel.text = appItem.trackName
            artistDescriptionLabel.text = appItem.description
            url = appItem.artworkUrl100
        }
        
        self.artworkImageView.image = nil
        if let url = url {
            AppleStoreItemController.fetchImageFrom(url: url) { (result) in
                switch result {
                case .success(let image):
                    DispatchQueue.main.async {
                        self.artworkImageView.image = image
                    }
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
}
