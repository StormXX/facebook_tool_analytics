#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint facebook_tool_analytics.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'facebook_tool_analytics'
  s.version          = '0.0.1'
  s.summary          = 'Flutter Plugin for Facebook Analytics'
  s.description      = <<-DESC
Flutter Plugin for Facebook Analytics.
                       DESC
  s.homepage         = 'https://github.com/StormXX/facebook_tool_analytics'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'StormXX' => 'liaozhaoxing@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'FacebookCore'
  s.platform = :ios, '9.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  s.swift_version = '5.0'
end
