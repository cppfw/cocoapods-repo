Pod::Spec.new do |s|
  s.name         = "mordavokne"
  s.version      = "0.2.59"
  s.summary      = "Intrusive C++ cross-platform GUI library."
  s.homepage     = "https://github.com/cppfw/#{s.name}"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Ivan Gagis" => "igagis@gmail.com" }
  s.platform     = :ios
  s.ios.deployment_target = '8.0'

  s.source = { :http => "https://dl.bintray.com/cppfw/cocoapods/#{s.name}/#{s.version}/#{s.name}-#{s.version}.zip" }

  s.source_files  = "include/**/*.{hpp,h}"
  s.header_mappings_dir = "include"

  s.ios.vendored_library = "lib/ios/lib#{s.name}.a"

  #TODO: is this needed?
  # we don't use Objective-C Automatic Resource Counting
  #s.requires_arc = false

  #TODO: is this needed?
  #s.frameworks = 'GLKit'

  s.dependency 'utki', '>= 1.0.32'
  s.dependency 'nitki', '>= 1.0.14'
  s.dependency 'morda', '>= 0.5.71'
  s.dependency 'papki', '>= 1.0.11'
  s.dependency 'r4', '>= 0.1.0'
  s.dependency 'morda-opengles2-ren', '>= 0.1.7'
end
