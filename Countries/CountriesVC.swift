//
//  ViewController.swift
//  Countries
//
//  Created by Rawan Tarek on 7/6/22.
//  Copyright © 2022 Rawan Tarek. All rights reserved.
//

import UIKit

class CountriesVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var countriesArr = [CountryModel]()
    override func viewDidLoad() {
        super.viewDidLoad()
 tableView.register(UINib(nibName: CountryCell.cellId, bundle: nil), forCellReuseIdentifier: CountryCell.cellId)
        tableView.delegate = self
        tableView.dataSource = self
        
        APIManager.loadCountries { (error, countries) in
            if let error = error {
                print(error)
            } else {
                guard let countries = countries else {
                    return
                }
                self.countriesArr = countries
                print(self.countriesArr[1].image)
                self.tableView.reloadData()
            }
        }
    }

}


extension CountriesVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countriesArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: CountryCell.cellId, for: indexPath) as? CountryCell else {
                return UITableViewCell()
            }
        cell.ConfigureCell(country: countriesArr[indexPath.row])
            return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    
}

    
    

