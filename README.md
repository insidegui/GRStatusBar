# GRStatusBar

Safari-like status bar for OS X apps.

This adds a `statusBar` property to NSWindow, the easiest way to show a status message is by just setting the `text` property on your window's `statusBar`.

[See demo app to learn more](https://github.com/insidegui/GRStatusBarDemo).

[Read the docs](http://cocoadocs.org/docsets/GRStatusBar).

![screenshot](https://raw.githubusercontent.com/insidegui/GRStatusBar/master/screenshot.png)

## Installing

### Using CocoaPods:

Add a `Podfile` that contains at least the following information to the root of your app project, then do `pod install`.
If you're unfamiliar with CocoaPods, read [using CocoaPods](http://guides.cocoapods.org/using/using-cocoapods.html).

```ruby
platform :osx, '10.11'      # only 10.11 and up supported
pod 'GRStatusBar'
use_frameworks!
```

### Manually

Just download the code and add `GRStatusBar.framework` to the `Embedded Binaries` section of your app's target config.

## ❤️

[![Flattr this git repo](http://api.flattr.com/button/flattr-badge-large.png)](https://flattr.com/submit/auto?user_id=insidegui&url=https://github.com/insidegui/GRStatusBar.git)