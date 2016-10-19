
Pod::Spec.new do |s|
  s.name     = 'ImageRightButton'
  s.version  = '0.0.1'
  s.platform = :ios, '7.0'
  s.license  = 'MIT'
  s.summary  = 'give a button with titlelabel in left and image in right'
  s.homepage = 'https://github.com/fizix100/ImageRightButton'
  s.author   = { 'fizix100' => 'fizix100@hotmail.com' }
  s.source   = { :git => 'https://github.com/fizix100/ImageRightButton.git', :tag => s.version.to_s }

  s.description = 'Inherited from UIButton, the button has a BOOL property "isImageRight",
  				   when set this property as YES, the button can set its title in left and 
  				   image in right'

  s.frameworks   = 'UIKit'
  s.source_files = 'ImageRightButton/Classes/*.{h,m}'
  # s.preserve_paths  = 'Demo'
  s.requires_arc = true
end