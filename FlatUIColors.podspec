#
# Be sure to run `pod lib lint FlatUIColors.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FlatUIColors'
  s.version          = '1.0.0'
  s.summary          = 'A simple extension to use my flat colors in your code.'

  s.description      = <<-DESC
  A simple extension to use flat colors in your code.code.
  More info here: 'https://www.albertopasca.it/whiletrue'.
                       DESC

  s.homepage         = 'https://github.com/elpsk/FlatUIColors'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Alberto Pasca' }
  s.source           = { :git => 'https://github.com/elpsk/FlatUIColors.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'
  s.source_files = 'FlatUIColors/Classes/**/*'
  
end
