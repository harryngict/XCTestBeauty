Pod::Spec.new do |spec|
  spec.name         = "XCTestBeauty"
  spec.version      = "0.0.1"
  spec.summary      = "XCTestBeauty module"
  
  spec.description  = <<-DESC
  A swift module to support writing unit test with more meaning full.
  DESC
  
  spec.homepage     = "https://github.com/harryngict/XCTestBeauty"
  spec.license      = { :type => "MIT", :text => "Copyright (c) 2023" }
  spec.authors      = { "Hoang Nguyen" => "harryngict@gmail.com" }
  spec.platform     = :ios, "12.0"
  spec.source       = { :git => "git@github.com:harryngict/XCTestBeauty.git", :tag => "#{spec.version}" }
  spec.source_files  = "XCTestBeauty/**/*.{swift, h}"
  spec.swift_version = '5.0'
  spec.requires_arc = true
  spec.static_framework = true
  spec.framework = "Foundation", "XCTest"
end
