import RxSwift
import RxRelay

public class BehaviorRelayExperiment: Executer {
    public init() {}
    
    // dispose
    let disposeBag = DisposeBag()
    
    public func play() {
        let behaviourRelay = BehaviorRelay(value: 0)
        behaviourRelay.accept(0)
        
        // subcribe 1
        behaviourRelay
            .subscribe { llog("🔵 \($0)") }
            .disposed(by: disposeBag)
        
        // emits
        behaviourRelay.accept(1)
        behaviourRelay.accept(2)
        
        
        // subcribe 2
        behaviourRelay
            .subscribe { llog("🔴 \($0)") }
            .disposed(by: disposeBag)
        
        // emit
        behaviourRelay.accept(3)
        
        llog("🚦BehaviourRelay value: \(behaviourRelay.value)")
    }
}

public class PublishRelayExperiment: Executer {
    public init() {}
    let disposeBag = DisposeBag()
    
    public func play() {
        // relay
        let publishRelay = PublishRelay<String>()
        publishRelay.accept("0")
        
        // subcribe 1
        publishRelay
            .subscribe { llog("🔵 \($0)") }
            .disposed(by: disposeBag)
        
        // emits
        publishRelay.accept("1")
        
        // subcribe 2
        publishRelay
            .subscribe { llog("🔴 \($0)") }
            .disposed(by: disposeBag)
        
        // emit
        publishRelay.accept("2")
        publishRelay.accept("3")
        publishRelay.accept("4")
    
//        llog("🚦 \(publishRelay.value)") ❌ cannot get value
    }
}
