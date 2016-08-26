require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))
ios_root = 'ios/RCTFirebaseAnalytics'

Pod::Spec.new do |s|
  s.name         = "react-native-firebase-analytics-bridge"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.author       = "Idéhub AS"

  s.homepage     = package["homepage"]

  s.license      = package["license"]
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/SanjeevBharadwaj/react-native-firebase-analytics-bridge", :tag => "#{s.version}" }

  s.dependency "React"

  s.source_files  =
    galib_root+'/*.{h}',
    ios_root+'/RCTFirebaseAnalytics/*.{h,m}'

end
