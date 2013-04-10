# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rspec-mocks}
  s.version = "2.13.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Steven Baker}, %q{David Chelimsky}]
  s.date = %q{2013-04-07}
  s.description = %q{RSpec's 'test double' framework, with support for stubbing and mocking}
  s.email = %q{rspec-users@rubyforge.org}
  s.homepage = %q{http://github.com/rspec/rspec-mocks}
  s.licenses = [%q{MIT}]
  s.rdoc_options = [%q{--charset=UTF-8}]
  s.require_paths = [%q{lib}]
  s.rubyforge_project = %q{rspec}
  s.rubygems_version = %q{1.8.8}
  s.summary = %q{rspec-mocks-2.13.1}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, ["~> 10.0.0"])
      s.add_development_dependency(%q<cucumber>, ["~> 1.1.9"])
      s.add_development_dependency(%q<aruba>, ["~> 0.5"])
    else
      s.add_dependency(%q<rake>, ["~> 10.0.0"])
      s.add_dependency(%q<cucumber>, ["~> 1.1.9"])
      s.add_dependency(%q<aruba>, ["~> 0.5"])
    end
  else
    s.add_dependency(%q<rake>, ["~> 10.0.0"])
    s.add_dependency(%q<cucumber>, ["~> 1.1.9"])
    s.add_dependency(%q<aruba>, ["~> 0.5"])
  end
end
