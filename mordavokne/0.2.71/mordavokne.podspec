Pod::Spec.new do |s|
  s.name         = "mordavokne"
  s.version      = "0.2.71"
  s.summary      = "Intrusive C++ cross-platform GUI library."
  s.homepage     = "https://github.com/cppfw/#{s.name}"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Ivan Gagis" => "igagis@gmail.com" }
  s.platform     = :ios
  s.ios.deployment_target = '8.0'

  s.source = { :http => "http://gagis.hopto.org/repo/cppfw/cocoapods/#{s.name}-#{s.version}.zip" }

  s.source_files  = "include/**/*.{hpp,h}"
  s.header_mappings_dir = "include"

  s.ios.vendored_library = "lib/ios/lib#{s.name}.a"

  #TODO: is this needed?
  # we don't use Objective-C Automatic Resource Counting
  #s.requires_arc = false

  #TODO: is this needed?
  #s.frameworks = 'GLKit'

  s.dependency 'utki', '>= 1.1.124'
  s.dependency 'nitki', '>= 1.0.41'
  s.dependency 'morda', '>= 0.5.163'
  s.dependency 'papki', '>= 1.0.93'
  s.dependency 'r4', '>= 0.1.53'
  s.dependency 'morda-render-opengles', '>= 0.1.37'
end
