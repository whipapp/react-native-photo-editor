require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-photo-editor"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.authors      = package["author"]

  s.platforms    = { :ios => "10.0" }
  s.source       = { :git => "https://github.com/baronha/react-native-photo-editor.git", :tag => "#{s.version}" }
  s.swift_version = ['5.0', '5.1', '5.2']

  s.source_files = "ios/**/*.{h,m,mm,swift}"

  s.dependency "React-Core"
  s.dependency "SDWebImage", "~> 5.11.1"
  s.dependency 'SDWebImageWebPCoder', '~> 0.8.4'
  s.dependency 'ZLImageEditor', '~> 2.0.3'
end
