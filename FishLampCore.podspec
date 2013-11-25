#
#  Be sure to run `pod spec lint FishLampCore.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "FishLampCore"
  s.version      = "0.0.1"
  s.summary      = "FishLampCore contains the required files for other FishLamp CocoaPods"
  s.description  = <<-DESC
                   A longer description of FishLampCore in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC

  s.homepage     = "http://fishlamp.com"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Mike Fullerton" => "hello@fishlamp.com" }
  s.ios.deployment_target = '6.1'
  s.osx.deployment_target = '10.6'
  s.source       = { :git => "https://github.com/fishlamp-cocoa/fishlamp-core", :tag => "0.0.1" }
  
  s.subspec 'Classes' do |classes|
      classes.source_files  = 'Classes', 'Classes/**/*.{h,m}'
      classes.header_mappings_dir = 'Classes'
  end
  
  s.subspec 'Tests' do |tests|
    tests.source_files = 'Tests/**/*.{h,m}', 'Classes/**/*.{h,m}'
  end


end


#   s.exclude_files = 'Classes/Exclude'
  # s.public_header_files = 'Classes/**/*.h'


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # s.framework  = 'SomeFramework'
  # s.frameworks = 'SomeFramework', 'AnotherFramework'

  # s.library   = 'iconv'
  # s.libraries = 'iconv', 'xml2'


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # s.requires_arc = true

  # s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
  # s.dependency 'JSONKit', '~> 1.4'
