//
//  ViewController.swift
//  MVP project
//
//  Created by Дмитрий Абдуллаев on 22.11.2022.
//

import UIKit

  class TrafficLightViewController: UIViewController, TrafficLightViewDelegate {
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    private let trafficLightPresenter = TrafficLightPresenter(trafficLightService: TrafficLightService())

    override func viewDidLoad() {
        super.viewDidLoad()
        
        trafficLightPresenter.setViewDelegate(trafficLightViewDelegate: self)
    }
        
    @IBAction func redLightAction(_ sender: Any) {
            trafficLightPresenter.trafficLightColorSelected(colorName: "Red")
    }
    
    @IBAction func yellowLightAction(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelected(colorName: "Yellow")
    }
    
    @IBAction func greenLightAction(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelected(colorName: "Green")
    }
    func displayTrafficLight(description: (String)) {
        descriptionLabel.text = description
    }
}

