#
# Be sure to run `pod lib lint CMSMLeaksFinder.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CMSMLeaksFinder'
  s.version          = '0.1.7'
  s.summary          = 'A short description of CMSMLeaksFinder.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/1670912199/CMSMLeaksFinder'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'heyunqian' => '1670912199@qq.com' }
  s.source           = { :git => 'https://github.com/1670912199/CMSMLeaksFinder.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

#  s.source_files = 'CMSMLeaksFinder/Classes/**/*'
#  s.public_header_files = 'CMSMLeaksFinder/Classes/**/*.{h}'

  mrr_files = [
    'CMSMLeaksFinder/Classes/FBRetainCycleDetector/Associations/FBAssociationManager.h',
    'CMSMLeaksFinder/Classes/FBRetainCycleDetector/Associations/FBAssociationManager.mm',
    'CMSMLeaksFinder/Classes/FBRetainCycleDetector/Layout/Blocks/FBBlockStrongLayout.h',
    'CMSMLeaksFinder/Classes/FBRetainCycleDetector/Layout/Blocks/FBBlockStrongLayout.m',
    'CMSMLeaksFinder/Classes/FBRetainCycleDetector/Layout/Blocks/FBBlockStrongRelationDetector.h',
    'CMSMLeaksFinder/Classes/FBRetainCycleDetector/Layout/Blocks/FBBlockStrongRelationDetector.m',
    'CMSMLeaksFinder/Classes/FBRetainCycleDetector/Layout/Classes/FBClassStrongLayoutHelpers.h',
    'CMSMLeaksFinder/Classes/FBRetainCycleDetector/Layout/Classes/FBClassStrongLayoutHelpers.m',
  ]

  files = Pathname.glob("CMSMLeaksFinder/Classes/**/*.{h,m,mm}")
  files = files.map {|file| file.to_path}
  files = files.reject {|file| mrr_files.include?(file)}

  s.requires_arc = files.sort
  
  s.public_header_files = [
    'CMSMLeaksFinder/Classes/FBRetainCycleDetector/Detector/FBRetainCycleDetector.h',
    'CMSMLeaksFinder/Classes/FBRetainCycleDetector/Associations/FBAssociationManager.h',
    'CMSMLeaksFinder/Classes/FBRetainCycleDetector/Graph/FBObjectiveCBlock.h',
    'CMSMLeaksFinder/Classes/FBRetainCycleDetector/Graph/FBObjectiveCGraphElement.h',
    'CMSMLeaksFinder/Classes/FBRetainCycleDetector/Graph/Specialization/FBObjectiveCNSCFTimer.h',
    'CMSMLeaksFinder/Classes/FBRetainCycleDetector/Graph/FBObjectiveCObject.h',
    'CMSMLeaksFinder/Classes/FBRetainCycleDetector/Graph/FBObjectGraphConfiguration.h',
    'CMSMLeaksFinder/Classes/FBRetainCycleDetector/Filtering/FBStandardGraphEdgeFilters.h',
  ]
  
  s.framework = "Foundation", "CoreGraphics", "UIKit"
  s.library = 'c++'
#  s.dependency 'CMSFBRetainCycleDetector'
  
  s.subspec 'FBRetainCycleDetector' do |sss|
    sss.source_files = 'CMSMLeaksFinder/Classes/FBRetainCycleDetector/**/*.{h,m,mm}'
    sss.public_header_files = 'CMSMLeaksFinder/Classes/FBRetainCycleDetector/**/*.{h}'
  end
  s.subspec 'MLeaksFinder' do |sss|
    sss.source_files = 'CMSMLeaksFinder/Classes/MLeaksFinder/*.{h,m}'
    sss.public_header_files = 'CMSMLeaksFinder/Classes/MLeaksFinder/*.{h}'
  end
  s.subspec 'rcd_fishhook' do |sss|
    sss.source_files = 'CMSMLeaksFinder/Classes/rcd_fishhook/*.{h,c}'
    sss.public_header_files = 'CMSMLeaksFinder/Classes/rcd_fishhook/*.{h}'
  end
  
  # s.resource_bundles = {
  #   'CMSMLeaksFinder' => ['CMSMLeaksFinder/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
