Pod::Spec.new do |s|
  s.name         = "cssom"
  s.version      = "0.2.21"
  s.summary      = "C++ cross-platform CSS DOM library."
  s.homepage     = "https://github.com/cppfw/#{s.name}"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Ivan Gagis" => "igagis@gmail.com" }
  s.platform     = :ios
  s.ios.deployment_target = '9.0'
  
  s.source = { :http => "http://gagis.hopto.org/repo/cppfw/cocoapods/#{s.name}-#{s.version}.zip" }

  s.source_files  = "include/**/*.{hpp,h}"
  s.header_mappings_dir = "include"

  s.ios.vendored_framework = "lib/ios/#{s.name}.xcframework"

  s.dependency 'utki', '>= 1.1.164'
  s.dependency 'papki', '>= 1.0.111'
end
