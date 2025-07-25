Pod::Spec.new do |s|
  s.name         = "svgren"
  s.version      = "0.6.28"
  s.summary      = "C++ cross-platform SVG render library."
  s.homepage     = "https://github.com/cppfw/#{s.name}"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Ivan Gagis" => "igagis@gmail.com" }
  s.platform     = :ios
  s.ios.deployment_target = '12.0'

  s.source = { :http => "http://gagis.hopto.org/repo/cppfw/cocoapods/#{s.name}-#{s.version}.zip" }

  s.source_files  = "include/**/*.{hpp,h}"
  s.header_mappings_dir = "include"

  s.ios.vendored_framework = "lib/ios/#{s.name}.xcframework"

  s.dependency 'svgdom', '>= 0.3.61'
  s.dependency 'veg', '>= 0.1.0'
  s.dependency 'rasterimage', '>= 0.1.3'
end
