Pod::Spec.new do |spec|
  spec.name         = "CodableUserDefaults"
  spec.version      = "0.0.1"
  spec.summary      = "A simple implementation of Codables with UserDefaults."
  spec.description  = "CodableUserDefaults gives you the power to implement UserDefaults with codable seamlessly, look at it as icing on the cake."
  spec.homepage     = "http://github.com/AdieOlami/CodableUserDefaults"
  spec.license = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "Adie Olalekan" => "ugbeadie@gmail.com" }
  spec.social_media_url   = "https://twitter.com/AdieOlami"

  spec.source       = { :git => "https://github.com/AdieOlami/CodableUserDefaults.git", :tag => "#{spec.version}" }

  spec.source_files  = "CodableUserDefaults/**/*.{swift}"
  spec.swift_versions = '5.0'
  spec.ios.deployment_target = "9.0"

end
