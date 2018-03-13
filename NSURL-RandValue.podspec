Pod::Spec.new do |s|
  s.name         		= "NSURL-RandValue"
  s.version      		= "0.0.1"
  s.summary      		= "Category that adds a method to NSURL to get a randomized URL, in order to avoid caching."

  s.description  		= <<-DESC
							Category that adds a method to NSURL to get a randomized URL, in order to avoid caching.
							Basically adds a "rand" query parameter to the URL, so this:
							http://domain/file.extension?key1=value1&key2=value2
							Becomes this:
							http://domain/file.extension?key1=value1&key2=value2&rand=<random_NSInteger>
                   		DESC
                   
  s.license      		= "MIT"

  s.homepage     		= "https://github.com/alejandroivan/NSURL-RandValue"
  s.author             	= { "Alejandro Iván Melo Domínguez" => "alejandroivan@icloud.com" }
  s.social_media_url   	= "https://twitter.com/alejandroivan"
  
  s.platform     		= :ios, "7.0"
  s.source       		= { :git => "https://github.com/alejandroivan/NSURL-RandValue.git", :tag => "#{s.version}" }

  s.source_files  		= "Classes/*.{h,m}"

  s.requires_arc 		= true

end
