# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "tweetstream"
  s.version = "2.6.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Michael Bleigh", "Steve Agalloco"]
  s.date = "2013-11-18"
  s.description = "TweetStream is a simple wrapper for consuming the Twitter Streaming API."
  s.email = ["michael@intridea.com", "steve.agalloco@gmail.com"]
  s.homepage = "https://github.com/tweetstream/tweetstream"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.3"
  s.summary = "TweetStream is a simple wrapper for consuming the Twitter Streaming API."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<daemons>, ["~> 1.1"])
      s.add_runtime_dependency(%q<em-http-request>, [">= 1.1.1"])
      s.add_runtime_dependency(%q<em-twitter>, ["~> 0.3"])
      s.add_runtime_dependency(%q<twitter>, ["~> 4.8"])
      s.add_runtime_dependency(%q<multi_json>, ["~> 1.3"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
    else
      s.add_dependency(%q<daemons>, ["~> 1.1"])
      s.add_dependency(%q<em-http-request>, [">= 1.1.1"])
      s.add_dependency(%q<em-twitter>, ["~> 0.3"])
      s.add_dependency(%q<twitter>, ["~> 4.8"])
      s.add_dependency(%q<multi_json>, ["~> 1.3"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<daemons>, ["~> 1.1"])
    s.add_dependency(%q<em-http-request>, [">= 1.1.1"])
    s.add_dependency(%q<em-twitter>, ["~> 0.3"])
    s.add_dependency(%q<twitter>, ["~> 4.8"])
    s.add_dependency(%q<multi_json>, ["~> 1.3"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
  end
end
