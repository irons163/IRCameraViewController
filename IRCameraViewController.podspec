Pod::Spec.new do |spec|
  spec.name         = "IRCameraViewController"
  spec.version      = "1.0.0"
  spec.summary      = "Make a Button Group to control."
  spec.description  = "Make a Button Group to control."
  spec.homepage     = "https://github.com/irons163/IRCameraViewController.git"
  spec.license      = "MIT"
  spec.author       = "irons163"
  spec.platform     = :ios, "9.0"
  spec.source       = { :git => "https://github.com/irons163/IRCameraViewController.git", :tag => spec.version.to_s }
  spec.source_files  = "IRCameraViewController/Class/**/*.{h,m,xib}"
  spec.resources = ["IRCameraViewController/**/*.xcassets", "IRCameraViewController/**/*.bundle"]
end
