Pod::Spec.new do |s|
  s.name         = "morda"
  s.version      = "0.5.157"
  s.summary      = "C++ cross-platform GUI library."
  s.homepage     = "https://github.com/cppfw/#{s.name}"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Ivan Gagis" => "igagis@gmail.com" }
  s.platform     = :ios
  s.ios.deployment_target = '8.0'

  s.source = { :http => "https://dl.bintray.com/cppfw/cocoapods/#{s.name}/#{s.version}/#{s.name}-#{s.version}.zip" }

  s.source_files  = "include/**/*.{hpp,h}"
  s.header_mappings_dir = "include"

  s.ios.vendored_library = "lib/ios/lib#{s.name}.a"

  # TODO: is this needed?
  #workaround for freetype-related compiling problems
  #s.xcconfig = { 'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Headers/Private/freetype"' }

  # TODO: is this needed?
  #this tells that we are linking against c++ libraries
  #s.libraries = 'c++'

  s.resources = "res/morda_res"

  s.dependency 'papki', '>= 1.0.58'
  s.dependency 'r4', '>= 1.0.6'
  s.dependency 'puu', '>= 0.1.1'
  s.dependency 'png', '>= 1.4.1.4'
  s.dependency 'freetype', '>= 2.10.1.1'
  s.dependency 'jpeg', '>= 6.1.1.5'
  s.dependency 'svgdom', '>= 0.3.26'
  s.dependency 'svgren', '>= 0.4.59'
  s.dependency 'utki', '>= 1.1.30'
end
