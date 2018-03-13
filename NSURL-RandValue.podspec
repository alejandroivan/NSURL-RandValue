#
#  Be sure to run `pod spec lint NSURL-RandValue.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "NSURL-RandValue"
  s.version      = "0.0.1"
  s.summary      = "Category that adds a method to NSURL to get a randomized URL, in order to avoid caching."

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = <<-DESC
					Category that adds a method to NSURL to get a randomized URL, in order to avoid caching.
					Basically adds a "rand" query parameter to the URL, so this:
					http://domain/file.extension?key1=value1&key2=value2
					Becomes this:
					http://domain/file.extension?key1=value1&key2=value2&rand=<random_NSInteger>
                   DESC

  s.homepage     = "https://github.com/alejandroivan/NSURL-RandValue"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See http://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  s.author             = { "Alejandro Iván Melo Domínguez" => "alejandroivan@icloud.com" }
  s.social_media_url   = "https://twitter.com/alejandroivan"
  
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/alejandroivan/NSURL-RandValue.git", :tag => "#{s.version}" }

  s.source_files  = "Classes/*.{h,m}"

  s.requires_arc = true

end
