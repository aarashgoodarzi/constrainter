#
#  Be sure to run `pod spec lint Constrainter.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.name         = "Constrainter"
  spec.version      = "1.0.0"
  spec.summary      = "A handy tool for setting constraints and designing view with code easily"
  spec.homepage     = "https://github.com/aarashgoodarzi/constrainter"
 
  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.license      = "MIT"
 
  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.author             = { "Arash Goodarzi" => "aarash.goodarzi@gmail.com" }
  spec.social_media_url   = "https://www.linkedin.com/in/mehrdad-goodarzi-4b5160128"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
   spec.platform     = :ios, "9.0"

  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.source       = { :git => "https://github.com/aarashgoodarzi/constrainter.git", :tag => "#{spec.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.source_files  = "constrainter/constrainter/*.{swift}"
 
end
