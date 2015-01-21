Pod::Spec.new do |s|
  s.name             = "TestSpec"
  s.version          = "0.0.1"
  s.summary          = "Test"
  s.homepage         = "https://www.google.com"
  s.author           = { "Ciprian Caba" => "1@2.com" }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source           = { :git => "https://github.com/CocoaPods/CocoaPodsTest.git", :tag => s.version.to_s }

  s.source_files = 'TestSpec/*.{h,c,m,swift}'
  s.resource_bundles = {
    'TestSpecBundle' => ['TestSpec/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  s.vendored_libraries = 'TestSpec/Libs/libssl.a'
  s.libraries = 'ssl'
end
