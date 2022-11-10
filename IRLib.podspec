Pod::Spec.new do |spec|
  spec.name         = "IRLib"
  spec.version      = "4.9.0" 
  spec.summary      = "Framework for Ailet functionality integration"
  spec.static_framework = true;
  spec.description  = <<-DESC
                         Framework for Ailet functionality integration.
                   DESC
  spec.homepage     = "https://github.com/intrtl/IRLib.git"
  spec.license      = "MIT"
  spec.author             = { "Alexander Shmakov" => "alexander.shmakov@ailet.com" }
  spec.platform     = :ios, "12.0"
  spec.source       = { :git => "https://github.com/intrtl/IRLib.git", :tag => "#{spec.version}" }
  spec.ios.vendored_frameworks = "IrLib.xcframework"
  spec.frameworks = "CoreMotion", "UserNotifications"
  spec.dependency "Realm", "~> 5.5.0"
  spec.dependency "OpenCV2", "~> 3.4.10"
  spec.dependency "AppCenter", "~> 1.2.0"
  spec.dependency "IrLibSwift", "4.9.0"
  spec.dependency "BugfenderSDK", "1.8.0"
  spec.dependency "Amplitude", "~> 8.8.0"
end