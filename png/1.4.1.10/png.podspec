Pod::Spec.new do |s|
  s.name         = "png"
  s.version      = "1.4.1.10"
  s.summary      = "portable network graphics library."
  s.homepage     = "https://github.com/cppfw/#{s.name}"
  s.license      = { :file => 'LICENSE' }
  s.author       = { "Ivan Gagis" => "igagis@gmail.com" }
  s.platform     = :ios
  s.ios.deployment_target = '8.0'

  s.source = { :http => "https://dl.bintray.com/cppfw/cocoapods/#{s.name}/#{s.version}/#{s.name}-#{s.version}.zip" }

  s.source_files  = "include/**/*.{hpp,h}"
  s.header_mappings_dir = "include"

  s.ios.vendored_library = "lib/ios/lib#{s.name}.a"

  s.dependency 'zlib', '>= 1.2.11.3'
end
