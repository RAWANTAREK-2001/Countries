//
//  CountryModel.swift
//  Countries
//
//  Created by Ahmed Yasein on 7/6/22.
//  Copyright © 2022 Rawan Tarek. All rights reserved.
//

import Foundation
import SwiftyJSON
class CountryModel: NSObject {
    var name: String
    var code: String
    var emoji: String
    var unicode: String
    var image: String

    init?(dict : [String : JSON]) {
           guard let name = dict["name"]?.string, let code = dict["code"]?.string, let emoji = dict["emoji"]?.string, let unicode = dict["unicode"]?.string, let image = dict["image"]?.string else {return nil}
           
           self.name = name
           self.code = code
           self.emoji = emoji
           self.unicode = unicode
           self.image = image

       }
}
