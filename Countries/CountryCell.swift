//
//  TableViewCell.swift
//  Countries
//
//  Created by Rawan Tarek on 7/6/22.
//  Copyright © 2022 Rawan Tarek. All rights reserved.
//

import UIKit
import SDWebImageSVGCoder
class CountryCell: UITableViewCell {
static let cellId = "CountryCell"
    @IBOutlet weak var countryNameLabel: UILabel!
    @IBOutlet weak var countryImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func ConfigureCell(country: CountryModel){
        self.countryNameLabel.text = country.name
        self.countryImageView.sd_setImage(with: URL(string: country.image))

    }
    
}
