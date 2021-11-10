target 'SwitStudyFight' do
  
source 'https://github.com/CocoaPods/Specs.git'

  # Uncomment the next line if you're using Swift or would like to use dynamic frameworks
  # use_frameworks!
 #UI自动布局
 pod 'Alamofire'

 post_install do |installer|
   installer.pods_project.build_configurations.each do |config|
     config.build_settings["EXCLUDED_ARCHS[sdk=iphonesimulator*]"] = "arm64"
   end
 end
end
