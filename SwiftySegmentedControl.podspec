Pod::Spec.new do |s|

  s.name         = "SwiftySegmentedControl"
  s.version      = "0.0.1"
  s.summary      = "An easy to use, customizable replacement for UISegmentedControl & UISwitch. And supported scroll."
  s.description  = <<-DESC
  SwiftySegmentedControl is an easy to use, customizable replacement for UISegmentedControl and UISwitch written in Swift.
                   DESC

  s.homepage     = "https://github.com/PlayApple/SwiftySegmentedControl"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "sunny" => "cocos2der@gmail.com" }
  # s.authors            = { "sunny" => "" }
  # s.social_media_url   = "http://twitter.com/sunny"

  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/PlayApple/SwiftySegmentedControl.git", :tag => "#{s.version}" }
  s.source_files  = "Pod/Classes/**/*"
  # s.exclude_files = "Classes/Exclude"
  # s.public_header_files = "Classes/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"
  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  # s.framework  = "SomeFramework"
  s.frameworks = "UIKit"
  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.requires_arc = true
  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"
end
