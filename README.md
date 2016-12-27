If you want to support my open source projects financially, you can do so by purchasing a copy of [BrowserFreedom](https://getbrowserfreedom.com), [Mediunic](https://itunes.apple.com/app/mediunic-medium-client/id1088945121?mt=12) or sending Bitcoin to `3DH9B42m6k2A89hy1Diz3Vr3cpDNQTQCbJ` 😁

# GRStatusBar

[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage) [![CocoaPods](https://img.shields.io/cocoapods/v/GRStatusBar.svg)]()

Safari-like status bar for macOS apps.

This adds a `statusBar` property to NSWindow, the easiest way to show a status message is by just setting the `text` property on your window's `statusBar`.

[See demo app to learn more](https://github.com/insidegui/GRStatusBarDemo).

[Read the docs](http://cocoadocs.org/docsets/GRStatusBar).

![screenshot](https://raw.githubusercontent.com/insidegui/GRStatusBar/master/screenshot.png)

## Installing

### Using Carthage:

Add the following line to your `Cartfile` and follow the [integration instructions for Carthage](https://github.com/Carthage/Carthage#adding-frameworks-to-an-application):

```
github "insidegui/GRStatusBar" ~> 1.1
```

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