# UILabelBetterGlow
✨ An easy way to make outer and inner glow for your UILabels.

[![CI Status](https://img.shields.io/travis/kinvl/UILabelBetterGlow.svg?style=flat)](https://travis-ci.org/kinvl/UILabelBetterGlow)
[![Version](https://img.shields.io/cocoapods/v/UILabelBetterGlow.svg?style=flat)](https://cocoapods.org/pods/UILabelBetterGlow)
[![License](https://img.shields.io/cocoapods/l/UILabelBetterGlow.svg?style=flat)](https://cocoapods.org/pods/UILabelBetterGlow)
[![Platform](https://img.shields.io/cocoapods/p/UILabelBetterGlow.svg?style=flat)](https://cocoapods.org/pods/UILabelBetterGlow)

## Features

- Customizable outer and inner glow for labels
- Storyboards support

## Screenshots
<img src="https://github.com/kinvl/UILabelBetterGlow/blob/main/Assets/Screenshot.PNG " width="320">

## Usage
### Programmatically
In your .swift file, import the module:
```swift
import UILabelBetterGlow
```
Then create and customize your label:
```swift
let label = BetterGlow()
label.frame = CGRect(x: 100, y: 100, width: 300, height: 100)
label.text = "My label"
label.glowRadius = 10
label.glowColor = UIColor(red: 0.67, green: 0.76, blue: 0.14, alpha: 1.00)
label.innerGlowRadius = 5
label.innerGlowColor = UIColor.blue
self.view.addSubview(label)
```

### Storyboards
<img src="https://raw.githubusercontent.com/kinvl/UILabelBetterGlow/main/Assets/Gif.gif">

## Requirements

- iOS 9 or newer

## Installation

UILabelBetterGlow is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'UILabelBetterGlow'
```

## Author

Krzysztof Kinal, kinvl@icloud.com

## License

UILabelBetterGlow is available under the MIT license. See the LICENSE file for more info.
