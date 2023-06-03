import Foundation

/**
A class representing an unsafe task in Swift.

This class allows you to execute a block of code asynchronously and retrieve the result synchronously. It uses the new async/await syntax introduced in Swift 5.5.
Usage

You can create an instance of UnsafeTask by providing a block of code that returns a value of type T. The block will be executed asynchronously, and the result can be retrieved synchronously using the get() method.

 ```
let task = UnsafeTask {
  // Perform some asynchronous operation and return a result
  return await someAsyncOperation()
}

let result = task.get() // Retrieve the result synchronously
 ```

The get() method will block the current thread until the asynchronous operation is complete and the result is available.
*/
public class UnsafeTask<T> {
    let semaphore = DispatchSemaphore(value: 0)
    private var result: T?
    public init(block: @escaping () async -> T) {
        Task {
            result = await block()
            semaphore.signal()
        }
    }

    public func get() -> T {
        if let result = result { return result }
        semaphore.wait()
        return result!
    }
}
