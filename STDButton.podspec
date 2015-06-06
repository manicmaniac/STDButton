#
# Be sure to run `pod lib lint STDButton.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "STDButton"
  s.version          = "0.0.1"
  s.summary          = "An Apple style button for iOS."
  s.description      = <<-DESC
                       An Apple style button for iOS.
                       Bordered with the tint color, and filled with the color when it pressed.
                       DESC
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.homepage         = 'https://github.com/manicmaniac/STDButton'
  s.author           = { "Ryosuke Ito" => "rito.0305@gmail.com" }
  s.source           = { :git => "https://github.com/manicmaniac/STDButton.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'

  s.public_header_files = 'Pod/Classes/STDButton.h'
  s.frameworks = 'UIKit'
end
