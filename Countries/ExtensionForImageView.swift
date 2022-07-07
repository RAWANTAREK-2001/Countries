//
//  ExtensionForImageView.swift
//  Countries
//
//  Created by Ahmed Yasein on 7/6/22.
//  Copyright © 2022 Rawan Tarek. All rights reserved.
//

import Foundation
import UIKit
import SDWebImage
extension UIImageView {
    func loadImageBySD(URLAddress: String?){
        guard let url = URLAddress else {
                 return
             }
    self.sd_setImage(with: URL(string: url), placeholderImage: UIImage(named: ""))

}
}
