Pod::Spec.new do |s|
  s.name         = "DPAdditions"
  s.version      = "0.0.2"
  s.summary      = "Category additions for Foundation and UIKit."
  s.description  = <<-DESC
                   Useful and convenient category methods for Foundation and UIKit classes.
                   DESC
  s.homepage     = "https://github.com/dperic/DPAdditions"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Eric Baker" => "ebaker@duneparksoftware.com" }
  s.platform     = :ios, '7.0'
  s.source       = { :git => "https://github.com/dperic/DPAdditions.git", :tag => "0.0.2" }
  s.source_files  = 'DPAdditions', 'DPAdditions/**/*.{h,m}'
  s.requires_arc = true
end

