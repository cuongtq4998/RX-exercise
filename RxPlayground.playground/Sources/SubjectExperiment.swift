import Foundation
import RxSwift

public class PublishSubjectExperiment: Executer {
    public init() {}
    let disposeBag = DisposeBag()
    
    
    public func play() {
        let subject = PublishSubject<Int>()
//        subject.onNext(0)
//        subject.onNext(00)
        
        subject
            .subscribe { llog("\(self) 🔵 \($0)") }
            .disposed(by: disposeBag)
        
        subject.onNext(1)
        subject.onNext(2)
        
        subject
            .subscribe { llog("\(self) 🔴 \($0)") }
            .disposed(by: disposeBag)
        
        subject.onNext(3)
        subject.onNext(4)
    }
}

public class BehaviorSubjectExperiment: Executer {
    let disposeBag = DisposeBag()
    public func play() {
        let subject = BehaviorSubject(value: 0)
//        subject.onNext(1)
//        subject.onNext(11)
        
        subject
            .subscribe { llog("\(self) 🔵 \($0)") }
            .disposed(by: disposeBag)
        
        subject.onNext(2)
        subject.onNext(3)
        
        subject
            .subscribe { llog("\(self) 🔴 \($0)") }
            .disposed(by: disposeBag)
        
        subject.onNext(4)
    }
    
    public init() {}
}
