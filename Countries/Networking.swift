//
//  Networking.swift
//  Countries
//
//  Created by Ahmed Yasein on 7/6/22.
//  Copyright © 2022 Rawan Tarek. All rights reserved.
//

import Foundation
import SwiftyJSON
import Alamofire

class APIManager {
    static func loadCountries(completion: @escaping (_ error: Error?, _ movies: [CountryModel]?) -> Void) {
        AF.request("https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/index.json", method: HTTPMethod.get, parameters: nil , encoding: URLEncoding.default, headers: nil).responseJSON { (response) in
            
                switch response.result {
                case .failure(let error):
                    print(error.localizedDescription)
                    completion(error, nil)
                    
                case .success(let value):
                    let json = JSON(value)
                    guard let dataArr = json.array else {
                        return
                    }
                    var countries = [CountryModel]()
                    for data in dataArr{
                        if let data = data.dictionary {
                            guard  let country = CountryModel.init(dict: data) else {
                                return
                            }
                            countries.append(country)
                            
                        
                    }
                        
                }
                    print(countries[0].image)
                    completion(nil, countries)
        }
}
}
}
