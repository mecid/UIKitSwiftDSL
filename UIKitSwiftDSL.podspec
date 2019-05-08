#
# Be sure to run `pod lib lint UIKitSwiftDSL.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UIKitSwiftDSL'
  s.version          = '1.0'
  s.summary          = 'Swift DSL for UIKit'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'Swift DSL for UIKit. Simple DSL in Swift which gives you opportunity to write layout code in declarative way.'
  s.homepage         = 'https://github.com/mecid/UIKitSwiftDSL'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Majid Jabrayilov' => 'cmecid@gmail.com' }
  s.source           = { :git => 'https://github.com/mecid/UIKitSwiftDSL.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/mecid'
  s.swift_version = '5.0'
  s.ios.deployment_target = '10.0'
  s.source_files = 'UIKitSwiftDSL/Classes/**/*'
  s.frameworks = 'UIKit', 'MapKit', 'SceneKit', 'SpriteKit', 'WebKit', 'MetalKit'
end
