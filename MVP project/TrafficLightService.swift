//
//  TrafficLightService.swift
//  MVP project
//
//  Created by Дмитрий Абдуллаев on 22.11.2022.
//

import Foundation

class TrafficLightService {
    
    func getTrafficLight(colorName: (String), callBack: (TrafficLight?) -> Void) {
        let trafficLights = [TrafficLight(colorName: "Red", description: "Stop"),
                             TrafficLight(colorName: "Yellow", description: "About to change to green"),
                             TrafficLight(colorName: "Green", description: "Go")]
        
        if let foundTrafficLight = trafficLights.first(where: {$0.colorName == colorName}) {
            callBack(foundTrafficLight)
        } else {
            callBack(nil)
        }
    }
}
