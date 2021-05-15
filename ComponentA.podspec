#
# Be sure to run `pod lib lint ComponentA.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ComponentA'
  s.version          = '1.0.0'
  s.summary          = 'ComponentA.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = '用于测试组件化的组件A'

  s.homepage         = 'https://github.com/DreamcoffeeZS/ComponentA'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'dreamcoffeezs' => 'dreamcoffeezs@163.com' }
  s.source           = { :git => 'https://github.com/DreamcoffeeZS/ComponentA.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'ComponentA/Classes/**/*'
  s.dependency 'ComponentMediator', '~> 1.0.0'
  s.dependency 'Masonry'

  # s.resource_bundles = {
  #   'ComponentA' => ['ComponentA/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
end
