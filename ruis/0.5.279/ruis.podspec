Pod::Spec.new do |s|
  s.name         = "ruis"
  s.version      = "0.5.279"
  s.summary      = "C++ cross-platform GUI library."
  s.homepage     = "https://github.com/cppfw/#{s.name}"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Ivan Gagis" => "igagis@gmail.com" }
  s.platform     = :ios
  s.ios.deployment_target = '13.0'

  s.source = { :http => "http://gagis.hopto.org/repo/cppfw/cocoapods/#{s.name}-#{s.version}.zip" }

  s.source_files  = "include/**/*.{hpp,h}"
  s.header_mappings_dir = "include"

  s.ios.vendored_framework = "lib/ios/#{s.name}.xcframework"

  # TODO: is this needed?
  #workaround for freetype-related compiling problems
  #s.xcconfig = { 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Headers/Private/freetype"' }

  # TODO: is this needed?
  #this tells that we are linking against c++ libraries
  #s.libraries = 'c++'

  s.resources = "res/ruis_res"

  s.dependency 'papki', '>= 1.0.93'
  s.dependency 'r4', '>= 1.0.53'
  s.dependency 'tml', '>= 0.1.28'
  s.dependency 'freetype', '>= 2.10.1.9'
  s.dependency 'svgdom', '>= 0.3.61'
  s.dependency 'svgren', '>= 0.5.11'
  s.dependency 'utki', '>= 1.1.124'
  s.dependency 'rasterimage', '>= 0.1.4'
end
