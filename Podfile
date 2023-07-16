# Uncomment the next line to define a global platform for your project
platform :ios, '12.0'

target 'Example' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Example
  pod 'VARkit', '~> 1.2'
  pod 'SwiftPhotoGallery'
  pod 'ZIPFoundation', '~> 0.9'
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
    end
  end
end
