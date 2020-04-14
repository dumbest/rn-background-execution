require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "RNBackgroundExecution"
  s.version      = package['version']
  s.summary      = package['description']
  s.description  = <<-DESC
  Ensure that critical tasks finish when your app moves to the background
                   DESC
  s.homepage     = package['homepage']
  s.license      = package['license']
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author       = package['author']
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/dumbest/rn-background-execution.git", :tag => "master" }
  s.source_files = "RNBackgroundExecution/**/*.{h,m}"
  s.requires_arc = true

  s.dependency "React"
  #s.dependency "others"

end

  