# XCTestBeauty

`XCTestBeauty` is a Swift library that provides a set of convenient wrappers for `XCTContext.runActivity()`. These wrappers help improve the readability of your XCTest cases by allowing you to use "GIVEN," "AND," "WHEN," and "THEN" prefixes for the descriptions of your test activities.

## Installation

You can install `XCTestBeauty` using CocoaPods. Add the following line to your `Podfile`:

```
pod 'XCTestBeauty'
```

Then, run the following command:

```
pod install
```


## Usage
Import XCTestBeauty

```
import XCTestBeauty

```

## Example Usage

```
class YourTestCase: XCTestCase, XCTestBeauty {
    func testExample() {
        given("a precondition") {
            // Your setup code here
        }

        and("an additional condition") {
            // Additional setup code
        }

        when("performing an action") {
            // Your action code here
        }

        then("the expected result should be achieved") {
            // Your assertion code here
        }
    }
}
```

## API Documentation

`given`, and,` when`, `then` These functions are wrappers for XCTContext.runActivity() and provide a more descriptive structure for your test cases. They take a description and a closure with the test activity.

```
func given<Result>(_ description: String, _ block: () throws -> Result) rethrows -> Result
func given<Result>(_ description: String, _ block: (XCTActivity) throws -> Result) rethrows -> Result

func and<Result>(_ description: String, _ block: () throws -> Result) rethrows -> Result
func and<Result>(_ description: String, _ block: (XCTActivity) throws -> Result) rethrows -> Result

func when<Result>(_ description: String, _ block: () throws -> Result) rethrows -> Result
func when<Result>(_ description: String, _ block: (XCTActivity) throws -> Result) rethrows -> Result

func then<Result>(_ description: String, _ block: () throws -> Result) rethrows -> Result
func then<Result>(_ description: String, _ block: (XCTActivity) throws -> Result) rethrows -> Result
```

## Contributing
If you find any issues or have suggestions for improvements, feel free to open an issue or submit a pull request.

## License
This library is released under the MIT License. See LICENSE for details.
