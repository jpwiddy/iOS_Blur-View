Pod::Spec.new do |s|
  s.name         = "iOS7 Blur View"
  s.version      = "1.0.0"
  s.summary      = "iOS 7's blur effect for an entire UIView"
  s.homepage     = "https://github.com/jpwidmer/iOS_Blur-View"
  s.license      = 'LICENSE'
  s.author       = { "Jake Widmer" => "jwidmer@tsrsolutions.com" }
  s.source       = { :git => "git@github.com:jpwidmer/iOS_Blur-View.git", :tag => s.version.to_s }
  s.platform     = :ios, '7.0'
  s.source_files = 'iOS7_blur/iOS7_blur/JWBlurView.{h,m}'
  s.requires_arc = true
end
