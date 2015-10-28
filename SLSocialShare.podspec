#
# Be sure to run `pod lib lint SLSocialShare.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "SLSocialShare"
  s.version          = "0.1.0"
s.summary          = "This is a guide to help developers get up to speed with Social Login and Sharing. It is geared primarily towards anyone who is new to Mac or iOS development, or has not worked extensively with 3rd-party libraries before.

These step-by-step instructions are written for Xcode 5, using the iOS 7 SDK. If you are using a previous version of Xcode, you may want to update before starting.

 "

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
This is a guide to help developers get up to speed with Social Login and Sharing. It is geared primarily towards anyone who is new to Mac or iOS development, or has not worked extensively with 3rd-party libraries before.
                       DESC

  s.homepage         = "https://github.com/bhumeshpurohit/SLSocialShare"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Bhumesh" => "bhumeshpurohit@ymail.com" }
  s.source           = { :git => "https://github.com/bhumeshpurohit/SLSocialShare.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'SLSocialShare' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
