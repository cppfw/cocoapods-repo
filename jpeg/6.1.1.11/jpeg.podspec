Pod::Spec.new do |s|
  s.name         = "jpeg"
  s.version      = "6.1.1.11"
  s.summary      = "JPEG image compression/decompression library."
  s.homepage     = "https://github.com/cppfw/#{s.name}"
  s.license      = { :file => 'LICENSE' }
  s.author       = { "Ivan Gagis" => "igagis@gmail.com" }
  s.platform     = :ios
  s.ios.deployment_target = '8.0'

  s.source = { :http => "https://cppfw.jfrog.io/artifactory/cocoapods/#{s.name}-#{s.version}.zip" }

  s.source_files  = "include/**/*.{hpp,h}"
  s.header_mappings_dir = "include"

  s.ios.vendored_library = "lib/ios/lib#{s.name}.a"

end
