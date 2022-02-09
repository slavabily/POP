import UIKit

protocol Bird {
    var name: String { get }
    var canFly: Bool { get }
}

protocol Flyable {
    var airspeedVelocity: Double { get }
}

struct FlappyBird: Bird, Flyable {
    let name: String
    let flappyAmplitude: Double
    let flappyFrequency: Double
    let canFly = true
    
    var airspeedVelocity: Double {
        3 * flappyFrequency * flappyAmplitude
    }
}

struct Penguin: Bird {
    let name: String
    let canFly = false
}

struct SwiftBird: Bird, Flyable {
    var name: String { "Swift \(version)"}
    var canFly = true
    let version: Double
    private var speedFactor = 1000.0
    
    init(version: Double) {
        self.version = version
    }
    
    // Swift is faster with each version!
    
    var airspeedVelocity: Double {
        version * speedFactor
    }
}
