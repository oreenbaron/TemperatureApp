//
//  ChangeCityViewController.swift
//  WeatherApp
//
//  Created by Oreen Baron on 02/05/2018.
//  Copyright © 2018 Oreen Baron. All rights reserved.
//

import UIKit



protocol ChangeCityDelegatee {
    func userEnteredANewCityName (city : String)
}

class ChangeCityViewController: UIViewController {
    
    var delegate : ChangeCityDelegatee?
    
    @IBOutlet weak var changeCityTextField: UITextField!

    
    @IBAction func getWeatherPressed(_ sender: AnyObject) {
        
        
        
        let cityName = changeCityTextField.text!
        
        delegate?.userEnteredANewCityName(city: cityName)
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    


    @IBAction func backButtonPressed(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
