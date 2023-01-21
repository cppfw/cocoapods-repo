Pod::Spec.new do |s|
  s.name         = "zlib"
  s.version      = "1.2.11.12"
  s.summary      = "Compression/decompression library."
  s.homepage     = "https://github.com/cppfw/#{s.name}"
  s.license      = { :type => 'zlib', :file => 'LICENSE' }
  s.author       = { "Ivan Gagis" => "igagis@gmail.com" }
  s.platform     = :ios
  s.ios.deployment_target = '9.0'

  s.source = { :http => "http://gagis.hopto.org/repo/cppfw/cocoapods/#{s.name}-#{s.version}.zip" }

  s.source_files  = "include/**/*.{hpp,h}"
  s.header_mappings_dir = "include"

  s.ios.vendored_framework = "lib/ios/#{s.name}.xcframework"

end
