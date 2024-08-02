import UIKit

func run(player: Executer) {
    player.play()
}

print("RxPlayground begin \n")

let behaviour = BehaviorRelayExperiment()
let publish = PublishRelayExperiment()

let publishSubject = PublishSubjectExperiment()
let behavioutSubject = BehaviorSubjectExperiment()

run(player: behaviour)

print("\nRxPlayground ended")
