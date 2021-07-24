#
# Be sure to run `pod lib lint UILabelBetterGlow.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UILabelBetterGlow'
  s.version          = '1.0.0'
  s.summary          = '✨ UILabelBetterGlow helps you make outer and inner glow for your UILabels.'
  s.swift_version    = '5.0'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
UILabelBetterGlow is easy to use pod, that helps you make outer and inner glow for your labels. Supports setting things up in code and in Storyboards as well.
                       DESC

  s.homepage         = 'https://github.com/kinvl/UILabelBetterGlow'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Krzysztof Kinal' => 'kinvl@icloud.com' }
  s.source           = { :git => 'https://github.com/kinvl/UILabelBetterGlow.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'UILabelBetterGlow/Classes/**/*'
  
  # s.resource_bundles = {
  #   'UILabelBetterGlow' => ['UILabelBetterGlow/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
