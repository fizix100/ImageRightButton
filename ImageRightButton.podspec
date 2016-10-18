
Pod::Spec.new do |s|
  s.name     = 'ImageRightButton'
  s.version  = '0.0.1'
  s.platform = :ios, '5.0'
  s.license  = 'MIT'
  s.summary  = 'give a button with titlelabel in left and image in right'
  s.homepage = 'https://github.com/fizix100/ImageRightButton'
  s.author   = { 'fizix100' => 'fizix100@hotmail.com' }
  s.source   = { :git => 'https://github.com/fizix100/ImageRightButton.git', :tag => s.version.to_s }

  s.description = 'Inherited from UIButton, the button has a BOOL property "isImageRight",
  				   when set this property as YES, the button can set its title in left and 
  				   image in right, the button has considered the titleEdgeInsects and imageEdgeInsects'

  s.frameworks   = 'UIKit'
  s.source_files = '*.{h,m}'
  # s.preserve_paths  = 'Demo'
  s.requires_arc = true
end


Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "ImageRightButton"
  s.version      = "0.0.1"
  s.summary      = "A short description of ImageRightButton."

  s.description  = <<-DESC
                   A longer description of ImageRightButton in Markdown format.
                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC


  s.homepage     = "https://github.com/fizix100/ImageRightButton"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.license      = "MIT (example)"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.authors             = { "朱雀" => "zhuque@ixiaopu.com" }
  s.social_media_url   = "http://twitter.com/朱雀"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.platform     = :ios
  s.platform     = :ios, "7.0"

  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.source       = { :git => "https://github.com/fizix100/ImageRightButton.git", :tag => "0.0.1" }

  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any h, m, mm, c & cpp files. For header
  #  files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  s.source_files  = "*.{h,m}"
  s.exclude_files = "Classes/Exclude"

end