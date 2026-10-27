Pod::Spec.new do |s|
  s.name             = 'APIVerveDomainExpiration'
  s.version          = '1.2.3'
  s.summary          = 'Domain Expiration is a domain expiration checker API.'
  s.description      = <<-'DESC'
Domain Expiration is a domain expiration checker API. Pass any domain and it reads the registry record over RDAP or WHOIS to return the days left until the domain expires, an expiration status from healthy to expired, and its age in days and years, with paid plans adding exact registration timestamps.

This iOS/macOS SDK provides a convenient way to access the Domain Expiration from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/domainexpiration?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/domainexpiration-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveDomainExpiration/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
