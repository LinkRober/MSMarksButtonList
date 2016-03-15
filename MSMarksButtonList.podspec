#
# Be sure to run `pod lib lint MSMarksButtonList.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "MSMarksButtonList"
  s.version          = "0.1.0"
  s.summary          = "a list of button,like collection view"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
                        This CocoaPod provides the ability to use a button list just like a  UICollectionView
                       DESC

  s.homepage         = "https://github.com/robert121/MSMarksButtonList"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2
  s.license          = 'MIT'
  s.author           = { "夏敏" => "min.xia@mishi.cn" }
  s.source           = { :git => "https://github.com/robert121/MSMarksButtonList.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'MSMarksButtonList' => ['Pod/Assets/*.png']
  }
  s.frameworks = 'UIKit'
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.dependency 'AFNetworking', '~> 2.3'
end
