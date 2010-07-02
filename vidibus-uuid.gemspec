# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{vidibus-uuid}
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Andre Pankratz"]
  s.date = %q{2010-06-28}
  s.description = %q{Provides UUID generation. Basically, it is an abstraction layer for UUID gem.}
  s.email = %q{andre@vidibus.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "lib/vidibus-uuid.rb",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/vidibus/vidibus-uuid}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Provides UUID generation through UUID gem.}
  s.test_files = [
    "spec/spec_helper.rb",
     "spec/support/model.rb",
     "spec/vidibus/mongoid_spec.rb",
     "spec/vidibus/uuid_spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<mongoid>, [">= 2.0.0.beta6"])
      s.add_runtime_dependency(%q<uuid>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<mongoid>, [">= 2.0.0.beta6"])
      s.add_dependency(%q<uuid>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<mongoid>, [">= 2.0.0.beta6"])
    s.add_dependency(%q<uuid>, [">= 0"])
  end
end

