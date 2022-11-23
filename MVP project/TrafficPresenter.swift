//
// TrafficPresenter.swift
//  MVP project
//
//  Created by Дмитрий Абдуллаев on 23.11.2022.
//

import Foundation

protocol TrafficLightViewDelegate: NSObjectProtocol {
    func displayTrafficLight(description: (String))
}

class TrafficLightPresenter {
    
    private let trafficLightService: TrafficLightService
    weak private var trafficLightViewDelegate: TrafficLightViewDelegate?
    
    init(trafficLightService: TrafficLightService) {
        self.trafficLightService = trafficLightService
       
    }
    
    func setViewDelegate(trafficLightViewDelegate: TrafficLightViewDelegate?) {
        self.trafficLightViewDelegate = trafficLightViewDelegate
    }
    
    func trafficLightColorSelected(colorName: (String)) {
        trafficLightService.getTrafficLight(colorName: colorName) { [weak self] trafficLight in
            
            if let trafficLight = trafficLight {
                self?.trafficLightViewDelegate?.displayTrafficLight(description: trafficLight.description)
            }
        }
    }
    
}
