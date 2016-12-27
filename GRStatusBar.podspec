#
#  GRStatusBar
#

Pod::Spec.new do |s|
  s.name         = "GRStatusBar"
  s.version      = "1.1.0"
  s.summary      = "Safari-like status bar for OS X apps."
  s.description  = <<-DESC
                   Safari-like status bar for OS X apps.
                   This adds a `statusBar` property to NSWindow, the easiest way to show a status message
                   is by just setting the `text` property on your window's `statusBar`.
                   
                   [See demo app to learn more](https://github.com/insidegui/GRStatusBarDemo).
                   DESC
  s.homepage     = "https://github.com/insidegui/GRStatusBar"
  s.license      = "BSD"
  s.author       = { "Guilherme Rambo" => "eu@guilhermerambo.me" }
  s.source       = { :git => "https://github.com/insidegui/GRStatusBar.git", :tag => "#{s.version}" }

  s.osx.deployment_target = "10.11"
  s.requires_arc = true
  
  s.source_files = "GRStatusBar/*.swift"
end