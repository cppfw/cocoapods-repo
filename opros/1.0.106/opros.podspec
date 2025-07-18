Pod::Spec.new do |s|
  s.name         = "opros"
  s.version      = "1.0.106"
  s.summary      = "C++ cross-platform event waiting library."
  s.homepage     = "https://github.com/cppfw/opros"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Ivan Gagis" => "igagis@gmail.com" }
  s.platform     = :ios
  s.ios.deployment_target = '12.0'

  s.source = { :http => "http://gagis.hopto.org/repo/cppfw/cocoapods/#{s.name}-#{s.version}.zip" }

  s.source_files  = "include/**/*.{hpp,h}"
  s.header_mappings_dir = "include"

  # the binary package provides static library
  s.ios.vendored_framework = "lib/ios/#{s.name}.xcframework"

  s.dependency 'utki', '>= 1.1.155'
end
