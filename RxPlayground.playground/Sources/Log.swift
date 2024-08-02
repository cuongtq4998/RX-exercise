import Foundation

public func llog(functionName: StaticString = #function,
                 absoluteFileName: StaticString = #file,
                 lineNumber: Int = #line,
                 _ object: Any?) {
    guard let unrwapObject = object else {
        return
    }
   
    let currentFile = "\(absoluteFileName)"
    let url = URL(fileURLWithPath: currentFile)
    let fileName = url.lastPathComponent
    let strDate = Date().string(withFormat: "yyyy-MM-dd HH:mm:ss.SSS")
    Swift.print("\(strDate) [\(fileName):\(lineNumber)] \(functionName) > \(unrwapObject)")
}

extension Date {
    func string(withFormat format: String = "dd/MM/yyyy HH:mm") -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }
}
