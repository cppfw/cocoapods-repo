Pod::Spec.new do |s|
  s.name         = "nitki"
  s.version      = "1.0.39"
  s.summary      = "C++ cross-platform threading library."
  s.homepage     = "https://github.com/cppfw/#{s.name}"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Ivan Gagis" => "igagis@gmail.com" }
  s.platform     = :ios
  s.ios.deployment_target = '8.0'

  s.source = { :http => "https://dl.bintray.com/cppfw/cocoapods/#{s.name}/#{s.version}/#{s.name}-#{s.version}.zip" }

  s.source_files  = "include/**/*.{hpp,h}"
  s.header_mappings_dir = "include"

  s.ios.vendored_library = "lib/ios/lib#{s.name}.a"

  s.dependency 'utki', '>= 1.1.112'
  s.dependency 'opros', '>= 1.0.44'
end