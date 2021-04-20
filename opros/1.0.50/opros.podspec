Pod::Spec.new do |s|
  s.name         = "opros"
  s.version      = "1.0.50"
  s.summary      = "C++ cross-platform event waiting library."
  s.homepage     = "https://github.com/cppfw/opros"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Ivan Gagis" => "igagis@gmail.com" }
  s.platform     = :ios
  s.ios.deployment_target = '8.0'

  s.source = { :http => "https://cppfw.jfrog.io/artifactory/cocoapods/#{s.name}-#{s.version}.zip" }

  s.source_files  = "include/**/*.{hpp,h}"
  s.header_mappings_dir = "include"

  # the binary package provides static library
  s.ios.vendored_library = "lib/ios/lib#{s.name}.a"

  s.dependency 'utki', '>= 1.1.123'
end
