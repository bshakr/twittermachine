# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "pusher"
  s.version = "0.12.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Pusher"]
  s.date = "2013-08-05"
  s.description = "Wrapper for pusher.com REST api"
  s.email = ["support@pusher.com"]
  s.homepage = "http://github.com/pusher/pusher-gem"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.3"
  s.summary = "Pusher API client"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<multi_json>, ["~> 1.0"])
      s.add_runtime_dependency(%q<signature>, ["~> 0.1.6"])
      s.add_runtime_dependency(%q<httpclient>, ["~> 2.3.0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.0"])
      s.add_development_dependency(%q<webmock>, [">= 0"])
      s.add_development_dependency(%q<em-http-request>, ["~> 1.1.0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rack>, [">= 0"])
    else
      s.add_dependency(%q<multi_json>, ["~> 1.0"])
      s.add_dependency(%q<signature>, ["~> 0.1.6"])
      s.add_dependency(%q<httpclient>, ["~> 2.3.0"])
      s.add_dependency(%q<rspec>, ["~> 2.0"])
      s.add_dependency(%q<webmock>, [">= 0"])
      s.add_dependency(%q<em-http-request>, ["~> 1.1.0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rack>, [">= 0"])
    end
  else
    s.add_dependency(%q<multi_json>, ["~> 1.0"])
    s.add_dependency(%q<signature>, ["~> 0.1.6"])
    s.add_dependency(%q<httpclient>, ["~> 2.3.0"])
    s.add_dependency(%q<rspec>, ["~> 2.0"])
    s.add_dependency(%q<webmock>, [">= 0"])
    s.add_dependency(%q<em-http-request>, ["~> 1.1.0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rack>, [">= 0"])
  end
end
