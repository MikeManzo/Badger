Pod::Spec.new do |s|

  s.name         = "BadgerView"
  s.version      = "0.9.0"
  s.summary      = "Unread 'badge count' control for macOS "

  s.description  = <<-DESC
                   An NSView-based unread badge count control for macOS based on Aral Balkan's BadgeView. 
                   Benefits include playing well with auto layout and support for designables and inspectables in Interface Builder
                   DESC

  s.homepage     = "https://github.com/MikeManzo/Badger"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Mike Manzo" => "manzo.mike@gmail.com" }

  s.swift_version = "5.0"
  s.osx.deployment_target = "10.11"

  s.source = { :git => "https://github.com/MikeManzo/Badger.git", :tag => s.version }
  s.source_files = "Badger/**/*.{swift,h,xib}"

  s.dependency 'Cartography', '~> 3.0'
end
