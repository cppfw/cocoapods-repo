Pod::Spec.new do |s|
  s.name         = "svgdom"
  s.version      = "0.4.31"
  s.summary      = "C++ cross-platform SVG DOM library."
  s.homepage     = "https://github.com/cppfw/#{s.name}"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Ivan Gagis" => "igagis@gmail.com" }
  s.platform     = :ios
  s.ios.deployment_target = '12.0'

  s.source = { :http => "http://gagis.hopto.org/repo/cppfw/cocoapods/#{s.name}-#{s.version}.zip" }

  s.source_files  = "include/**/*.{hpp,h}"
  s.header_mappings_dir = "include"

  s.ios.vendored_framework = "lib/ios/#{s.name}.xcframework"

  s.dependency 'utki', '>= 1.1.164'
  s.dependency 'papki', '>= 1.0.93'
  s.dependency 'mikroxml', '>= 0.1.36'
  s.dependency 'cssom', '>= 0.1.19'
  s.dependency 'r4', '>= 1.0.53'
end
