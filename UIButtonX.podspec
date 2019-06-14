#
# Be sure to run `pod lib lint UIButtonX.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UIButtonX'
  s.version          = '0.1.0'
  s.summary          = 'Subclass of UIButton with X button at the right to make it disappears'

  s.swift_version    = '5.0'
# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  
  the UIButtonX
  
  - it disappears when 'x' is pressed -> custom drawing
  - it notifies when it is about to disappear -> generate an event 'dismissed'
  - it self-sizing -> has intrinsic content size
  - it is a half-rounded -> layer customization
  - it is bordered with black color -> layer customization
  - it is subclass of UIButton -> implementing Liskov Substitution Princible
  
  ```
  // the name has been carefully selected
  // to reflect its design purpose :)
  let button = UIButtonX()
  button.setTitle("Gold Merchant", forState: .normal)
  button.addTarget(self, #selector(dismissed), forEvent: dismissed)
  ```
                       DESC

  s.homepage         = 'https://github.com/fitsyu/UIButtonX'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'fitsyu' => 'fitsyu2@gmail.com' }
  s.source           = { :git => 'https://github.com/fitsyu/UIButtonX.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'UIButtonX/Classes/**/*'
  
  s.resource_bundles = {
     'UIButtonX' => ['UIButtonX/Assets/*.xcassets']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
