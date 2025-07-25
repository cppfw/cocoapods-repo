Pod::Spec.new do |s|
  s.name         = "setka"
  s.version      = "1.0.40"
  s.summary      = "C++ cross-platform network sockets library."
  s.homepage     = "https://github.com/cppfw/#{s.name}"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Ivan Gagis" => "igagis@gmail.com" }
  s.platform     = :ios
  s.ios.deployment_target = '12.0'
  
  s.source = { :http => "http://gagis.hopto.org/repo/cppfw/cocoapods/#{s.name}-#{s.version}.zip" }

  s.source_files  = "include/**/*.{hpp,h}"
  s.header_mappings_dir = "include"

  s.ios.vendored_framework = "lib/ios/#{s.name}.xcframework"

  s.dependency 'utki', '>= 1.1.124'
  s.dependency 'papki', '>= 1.0.93'
  s.dependency 'nitki', '>= 1.0.41'
  s.dependency 'opros', '>= 1.0.46'
end
