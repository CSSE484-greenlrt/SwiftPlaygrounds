// TODO: Create the LinearLightsOutGame class
import Foundation

class LinearLightsOutGame:CustomStringConvertible {
    var lightStates: [Bool]
    var movesTaken: Int
    var gameOver: Bool
    
    init(numLights: Int) {
        lightStates = [Bool](repeating: false, count: numLights)
        let randomNumber : Int = Int(arc4random_uniform(UInt32(numLights)))
        for _ in 0..<randomNumber {
            lightStates[Int(arc4random_uniform(UInt32(numLights)))] = true
        }
        movesTaken = 0
        gameOver = false
    }
    
    func pressedLightAtIndex(_ index: Int) -> Bool {
        if gameOver {
            return true
        }
        lightStates[index] = !lightStates[index]
        if index == 0 {
            lightStates[index + 1] = !lightStates[index + 1]
        } else if index == lightStates.count - 1 {
            lightStates[index - 1] = !lightStates[index - 1]
        } else {
            lightStates[index + 1] = !lightStates[index + 1]
            lightStates[index - 1] = !lightStates[index - 1]
        }
        movesTaken += 1
        for lightState in lightStates {
            if lightState {
                return false
            }
        }
        gameOver = true
        return true
    }
    
    var description: String {
        var result = "Lights: "
        for lightState in lightStates {
            if lightState {
                result += "1"
            } else {
                result += "0"
            }
        }
        return result + " Moves: \(movesTaken)"
    }
}


/* ----------------- Official Playground testing ----------------- */
var lg = LinearLightsOutGame(numLights: 13)
lg.lightStates = [Bool](repeating: true, count: 13)
lg.pressedLightAtIndex(0)
lg
lg.pressedLightAtIndex(3)
lg
lg.pressedLightAtIndex(6)
lg
lg.pressedLightAtIndex(9)
lg
lg.pressedLightAtIndex(12)
lg
lg.pressedLightAtIndex(1)
lg


var lg2 = LinearLightsOutGame(numLights: 13)
lg2.lightStates = [true, true, false, false, false, false, false, false, false, false, true, true, true]
lg2.pressedLightAtIndex(0)
lg2
lg2.pressedLightAtIndex(11)
lg2
lg2.pressedLightAtIndex(6)
lg2

