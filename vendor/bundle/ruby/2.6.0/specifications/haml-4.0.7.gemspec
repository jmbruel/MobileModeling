# -*- encoding: utf-8 -*-
# stub: haml 4.0.7 ruby lib

Gem::Specification.new do |s|
  s.name = "haml".freeze
  s.version = "4.0.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Nathan Weizenbaum".freeze, "Hampton Catlin".freeze, "Norman Clarke".freeze]
  s.date = "2015-08-10"
  s.description = "Haml (HTML Abstraction Markup Language) is a layer on top of HTML or XML that's\ndesigned to express the structure of documents in a non-repetitive, elegant, and\neasy way by using indentation rather than closing tags and allowing Ruby to be\nembedded with ease. It was originally envisioned as a plugin for Ruby on Rails,\nbut it can function as a stand-alone templating engine.\n".freeze
  s.email = ["haml@googlegroups.com".freeze, "norman@njclarke.com".freeze]
  s.executables = ["haml".freeze]
  s.files = ["bin/haml".freeze]
  s.homepage = "http://haml.info/".freeze
  s.licenses = ["MIT".freeze]
  s.post_install_message = "\nHEADS UP! Haml 4.0 has many improvements, but also has changes that may break\nyour application:\n\n* Support for Ruby 1.8.6 dropped\n* Support for Rails 2 dropped\n* Sass filter now always outputs <style> tags\n* Data attributes are now hyphenated, not underscored\n* html2haml utility moved to the html2haml gem\n* Textile and Maruku filters moved to the haml-contrib gem\n\nFor more info see:\n\nhttp://rubydoc.info/github/haml/haml/file/CHANGELOG.md\n\n".freeze
  s.rubygems_version = "3.2.0.pre1".freeze
  s.summary = "An elegant, structured (X)HTML/XML templating engine.".freeze

  s.installed_by_version = "3.2.0.pre1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<tilt>.freeze, [">= 0"])
    s.add_development_dependency(%q<rails>.freeze, [">= 3.0.0"])
    s.add_development_dependency(%q<rbench>.freeze, [">= 0"])
    s.add_development_dependency(%q<minitest>.freeze, [">= 0"])
    s.add_development_dependency(%q<nokogiri>.freeze, ["~> 1.5.10"])
  else
    s.add_dependency(%q<tilt>.freeze, [">= 0"])
    s.add_dependency(%q<rails>.freeze, [">= 3.0.0"])
    s.add_dependency(%q<rbench>.freeze, [">= 0"])
    s.add_dependency(%q<minitest>.freeze, [">= 0"])
    s.add_dependency(%q<nokogiri>.freeze, ["~> 1.5.10"])
  end
end
