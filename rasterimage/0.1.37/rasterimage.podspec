Pod::Spec.new do |s|
  s.name         = "rasterimage"
  s.version      = "0.1.37"
  s.summary      = "C++ cross-platform raster image library."
  s.homepage     = "https://github.com/igagis/#{s.name}"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Ivan Gagis" => "igagis@gmail.com" }
  s.platform     = :ios
  s.ios.deployment_target = '12.0'
  
  s.source = { :http => "http://gagis.hopto.org/repo/cppfw/cocoapods/#{s.name}-#{s.version}.zip" }

  s.source_files  = "include/**/*.{hpp,h}"
  s.header_mappings_dir = "include"

  s.ios.vendored_framework = "lib/ios/#{s.name}.xcframework"

  s.dependency 'utki', '>= 1.1.211'
  s.dependency 'papki', '>= 1.0.129'
  s.dependency 'r4', '>= 1.0.75'
  s.dependency 'png', '>= 1.6.39.1'
  s.dependency 'jpeg', '>= 6.1.1.13'
end
