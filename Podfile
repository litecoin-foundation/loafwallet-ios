source 'https://github.com/CocoaPods/Specs.git'
workspace 'loafwallet.xcworkspace'
project 'loafwallet.xcodeproj', 'Debug' => :debug,'Release' => :release
use_frameworks!
platform :ios, '13.0'

#Shared Cocoapods
def shared_pods
  pod 'UnstoppableDomainsResolution', '~> 0.3.6'
  pod 'KeychainAccess', '~> 4.2'
  pod 'Firebase/Analytics'
  pod 'Firebase/Crashlytics' 
end

#Main targets
target 'loafwallet' do
    shared_pods
    target 'loafwalletTests' do
      inherit! :search_paths
    end
end

#Setting the Cocoapods config
post_install do |installer|
  
  #Removes the arm64 models from the sim / test .  May be removed when iOS can handle.
  installer.pods_project.build_configurations.each do |config|
    config.build_settings["EXCLUDED_ARCHS[sdk=iphonesimulator*]"] = "arm64"
  end
  
  #Sets all pods to iOS 10.0 or greater
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '10.0'
    end
  end
  
end
 
