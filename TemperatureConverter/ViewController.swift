//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by Cheng Yang on 2014-10-30.
//  Copyright (c) 2014 Cheng Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var kelvinLabel: UILabel!
    @IBOutlet weak var temperatureSlider: UISlider!
    @IBOutlet weak var titleLabel: UILabel!
    
    
    @IBAction func temperatureSliderChanged(sender: UISlider) {
                // TODO: read the current value of the slider and update the temperature displays
        self.updateTemperatureDisplays()
    }
    
//    override func viewWillLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        let screen = UIScreen.mainScreen()
//        titleLabel.backgroundColor = UIColor.grayColor()
//        titleLabel.textAlignment = .Center;
//        titleLabel.frame = CGRect(x:0 , y:(topLayoutGuide.length), width: (screen.bounds.width), height: 21)
//    }
    
    func updateTemperatureDisplays(){
        let C = temperatureSlider.value
        let F = (C*9/5)+32
        let K = C+273.15
        celsiusLabel.text = String(format: "%.1f", arguments :[C]) + "C"
        fahrenheitLabel.text = String(format: "%.1f", arguments :[F]) + "F"
        kelvinLabel.text = String(format: "%.1f", arguments :[K]) + "K"
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        temperatureSlider.maximumValue = 100
        temperatureSlider.minimumValue = 0
        temperatureSlider.value = 30
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

