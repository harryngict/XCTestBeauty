Pod::Spec.new do |spec|
  
  spec.name         = "BeautyTest"
  spec.version      = "0.0.1"
  spec.summary      = "BeautyTest module"
  
  spec.description  = <<-DESC
  A swift module to support writing unit test and snapshot test.
  DESC
  
  spec.homepage     = "https://github.com/harryngict/BeautyTest"
  spec.source       = { :git => "git@github.com:harryngict/BeautyTest.git", :tag => "#{spec.version}" }
  spec.authors      = { "Hoang Nguyen" => "harryngict@gmail.com" }
  spec.license      = { :type => "MIT", :text => "Copyright (c) 2023" }
  spec.swift_version = '5.0'
  spec.platform     = :ios, "12.0"
  spec.requires_arc = true
  spec.static_framework = true
  
  spec.subspec 'XCShortHand' do |short_hand_spec|
    short_hand_spec.source_files  = "BeautyTest/XCShortHand/**/*.{swift,h,m}"
    short_hand_spec.framework = "Foundation", "XCTest"
  end
  
  spec.subspec 'SnapshotTest' do |snap_shot_spec|
    snap_shot_spec.source_files  = "BeautyTest/SnapshotTest/**/*.{swift,h,m}"
    snap_shot_spec.framework = "Foundation", "XCTest"
    snap_shot_spec.dependency 'iOSSnapshotTestCase', "~> 8.0.0"
  end
end
