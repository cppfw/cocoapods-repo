Pod::Spec.new do |s|
  s.name         = "png"
  s.version      = "1.6.39.2"
  s.summary      = "portable network graphics library."
  s.homepage     = "https://github.com/cppfw/#{s.name}"
  s.license      = { :file => 'LICENSE' }
  s.author       = { "Ivan Gagis" => "igagis@gmail.com" }
  s.platform     = :ios
  s.ios.deployment_target = '9.0'

  s.source = { :http => "http://gagis.hopto.org/repo/cppfw/cocoapods/#{s.name}-#{s.version}.zip" }

  s.source_files  = "include/**/*.{hpp,h}"
  s.header_mappings_dir = "include"

  s.ios.vendored_framework = "lib/ios/#{s.name}.xcframework"

  s.dependency 'zlib', '>= 1.2.11.9'
end
