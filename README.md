![EvenlyWrappedLabel Logo](https://user-images.githubusercontent.com/2835199/31397929-599676e8-adb5-11e7-86d9-026ec3a78575.png)

![Swift4.0](https://img.shields.io/badge/Swift-4.0-orange.svg?style=flat")
[![Platform](https://img.shields.io/cocoapods/p/EvenlyWrappedLabel.svg?style=flat)](http://cocoapods.org/pods/EvenlyWrappedLabel)
[![Version](https://img.shields.io/cocoapods/v/EvenlyWrappedLabel.svg?style=flat)](http://cocoapods.org/pods/EvenlyWrappedLabel)
[![License](https://img.shields.io/cocoapods/l/EvenlyWrappedLabel.svg?style=flat)](http://cocoapods.org/pods/EvenlyWrappedLabel)

Description
--------------

`EvenlyWrappedLabel` is a `UILabel` subclass that will vertically distribute text or attributed text evenly across any number of lines, preventing text from grouping up at the top and also preventing single word orphans from taking up the entire bottom line.
 
 Examples:
 
1. This text:
 
        This sentence has a lot of words on
        the top line.
 
    Becomes:
 
        This sentence has a lot
        of words on the top line.
 
2. This text:
 
        This sentence has a single
        orphan.
 
    Becomes:
 
        This sentence has
        a single orphan.


**Works with iOS 9.0+ and Xcode 9.0.0+.**

# Contents
1. [Features](#features)
2. [Usage](#usage)
3. [Installation](#installation)
6. [License](#license)
7. [Contact](#contact)

<a name="features"> Features </a>
--------------

- [x] Works with all devices running iOS 9+.
- [x] Uses `drawText(in:)` internally (as opposed to creating subviews), so any `UILabel` reference can be replaced with `EvenlyWrappedLabel` and Everything Will Just Work™.
- [x] Works with any number of lines, any text alignment and attributed text.
- [x] Works with autolayout and honors intrinsic sizing.
- [x] Works with labels created in code and in Interface Builder.
- [x] `useEveryLine` option to force shorter text to take up all available lines.
- [x] Example app with lots of real-time configurations that lets you see the text wrap as you type.

![Example Project Screenshot](https://user-images.githubusercontent.com/2835199/31405403-f41c28ea-adcc-11e7-9555-5459ae1794d9.png)

<a name="usage"> Usage </a>
--------------

## Set up

Swap any `UILabel` reference with `EvenlyWrappedLabel`:

#### In code
-----

##### Before:
```swift
class ViewController {
    let label = UILabel()
}
```

##### After:
```swift
import EvenlyWrappedLabel

class ViewController {
    let label = EvenlyWrappedLabel()
}
```

#### In Interface Builder
-----

##### Before:
![Interface Builder Screenshot - Before](https://user-images.githubusercontent.com/2835199/31397446-12201e8c-adb4-11e7-8568-287da9f5205f.png)

##### After:
![Interface Builder Screenshot - After](https://user-images.githubusercontent.com/2835199/31397444-12116842-adb4-11e7-9ee0-35e3017de74b.png)

## (Optional) Use Every Line

Set `label.useEveryLine = true` to spread the text across all `numberOfLines`, even if the text isn't long enough to do so by default.

Example:

- When `numberOfLines` = `3`, and `useEveryLine` = `true`, the following text:
 
        This only takes up one line.
 
    Becomes:
 
        This only
        takes up
        one line.

<a name="installation"> Installation </a>
--------------

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects.

CocoaPods 0.36 adds supports for Swift and embedded frameworks. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate `EvenlyWrappedLabel` into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
pod 'EvenlyWrappedLabel'
```

Then, run the following command:

```bash
$ pod install
```

In case Xcode complains (<i>"Cannot load underlying module for EvenlyWrappedLabel"</i>) go to Product and choose Clean (or simply press <kbd>⇧</kbd><kbd>⌘</kbd><kbd>K</kbd>).

### Manually

If you prefer not to use CocoaPods, you can integrate `EvenlyWrappedLabel` into your project manually.

<a name="license"> License </a>
--------------

`EvenlyWrappedLabel` is developed by [Jeff Burt](https://www.linkedin.com/in/jeffaburt) at [StockX](https://stockx.com) and is released under the MIT license. See the `LICENSE` file for details.

<a name="contact"> Contact </a>
--------------

Feel free to follow me on [my personal Twitter account](https://twitter.com/jeffburtjr). If you find any problems with the project or have ideas to enhance it, feel free to open a GitHub issue and/or create a pull request.
