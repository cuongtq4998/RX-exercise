import UIKit

func run(player: Executer) {
    player.play()
}

print("RxPlayground begin \n")

let behaviour = BehaviorRelayExperiment()
let publish = PublishRelayExperiment()

run(player: publish)

print("\nRxPlayground ended")
