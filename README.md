# DigitEntryView
Simple iOS digit input field for OTP codes

![](Resources/corner_style.png)

### Installation
DigitEntryView is currently available either manually by cloning the project and adding `DigitEntryView.swift`  to your project, or you can use the Swift Package Manager (SPM).

1- In Xcode, click File > Swift Packages > Add Package Dependency.
2- In the dialog that appears, enter the repository URL: https://github.com/iAmrMohamed/DigitEntryView.git
3- In Version, select Up to Next Major and take the default option.
4- Click Next and select the library `DigitEntryView` checkbox, then click Finish and your're all set. 

### Requirements
- Requires iOS 9.0+

### Usage

### Storyboard
Drag a `UIView` object and set the class to `DigitEntryView` (if needed set the module to `DigitEntryView` too).

### Programmatically
```swift
import DigitEntryView

let digitEntryView = DigitEntryView()

// defaults to 6
digitEntryView.numberOfDigits = 5

// optional properties
digitEntryView.spacing = 20
digitEntryView.digitCornerRadius = 15
digitEntryView.digitColor = UIColor.black
digitEntryView.digitFont = .systemFont(ofSize: 20)

// circle digits
digitEntryView.digitCornerStyle = .circle

// set a specific corner radius for digits
digitEntryView.digitCornerStyle = .radius(15)

digitEntryView.digitBorderColor = UIColor.lightGray
digitEntryView.nextDigitBorderColor = UIColor.blue

// set the delegate to get callback for
// when a digit changes or when the digits gets filled
digitEntryView.delegate = self
``` 

### Delegate Callbacks

```swift
func digitsDidFinish(_ digitEntryView: DigitEntryView) {

}

func digitsDidChange(_ digitEntryView: DigitEntryView) {

}
```

## Author
[@iAmrMohamed](https://twitter.com/iAmrMohamed)

## License

DigitEntryView is available under the MIT license. See the LICENSE file for more info.
