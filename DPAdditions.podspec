Pod::Spec.new do |s|
  s.name         = "DPAdditions"
  s.version      = "0.0.3"
  s.summary      = "Category additions for Foundation and UIKit."
  s.description  = <<-DESC
                   Useful and convenient category methods for Foundation and UIKit classes.
                   DESC
  s.homepage     = "https://github.com/DuneParkSoftware/DPAdditions"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Eric Baker" => "ebaker@duneparksoftware.com" }
  s.platform     = :ios, '7.0'
  s.source       = { :git => "https://github.com/DuneParkSoftware/DPAdditions.git", :tag => "0.0.3" }
  s.source_files = 'DPAdditions'
  s.requires_arc = true
  s.default_subspec = 'Core'

  s.subspec 'Core' do |core|
    core.source_files = 'DPAdditions/*.{h,m}', 'DPAdditions/Foundation/**/*.{h,m}', 'DPAdditions/UIKit/**/*.{h,m}'
  end

  s.subspec 'ReactiveCocoa' do |rac|
    rac.dependency 'ReactiveCocoa'
    rac.source_files = 'DPAdditions/ReactiveCocoa/**/*.{h,m}'
  end
end

