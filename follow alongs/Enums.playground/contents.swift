// Basic enum
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}
var today: Weekday
today = .friday

// Rawvalues
//today.rawValue

switch today {
    case .monday, .tuesday, .thursday:
        print("You have class")
    case .wednesday:
        print("You don't have class")
default:
    print("Enjoy the weekend!")
}

enum State: Int {
    case ready = 0
    case set
    case go
}
var raceState = State.set
raceState.rawValue

var nextRaceState = State(rawValue: raceState.rawValue + 1)
if nextRaceState == .go {
    print("Go!!!!!")
}
nextRaceState
type(of: nextRaceState)
nextRaceState?.rawValue

// Associate values and functions
enum HomeworkStatus {
    case noHomework
    case inProgress(Int, Int)
    case done
    
    func simpleDescription () -> String {
        switch self {
            
        case .noHomework:
            return "No homework. Yeah!"
        case .inProgress(let numComplete, let totalToDo):
            return "You have finished \(numComplete) out of \(totalToDo)"
        case .done:
            return "Done!"
        }
    }
}

var myHwStauts = HomeworkStatus.inProgress(2, 5)
myHwStauts.simpleDescription()

myHwStauts = .done
myHwStauts.simpleDescription()

myHwStauts = .noHomework
myHwStauts.simpleDescription()
myHwStauts.simpleDescription()













// Associated values and functions


