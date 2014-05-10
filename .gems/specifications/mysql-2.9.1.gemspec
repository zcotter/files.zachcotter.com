# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{mysql}
  s.version = "2.9.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["TOMITA Masahiro"]
  s.date = %q{2013-02-16}
  s.description = %q{This is the MySQL API module for Ruby. It provides the same functions for Ruby
programs that the MySQL C API provides for C programs.

This package is offered as gem for easy installation using RubyGems. It wraps
unmodified tmtm's mysql-ruby extension into a proper gem.

Please note that tmtm (Tomita Mashahiro) has deprecated development of this
extension and only update it for bug fixes.}
  s.email = ["tommy@tmtm.org"]
  s.extensions = ["ext/mysql_api/extconf.rb"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.files = ["COPYING", "COPYING.ja", "History.txt", "Manifest.txt", "README.txt", "Rakefile", "ext/mysql_api/extconf.rb", "ext/mysql_api/mysql.c", "extra/README.html", "extra/README_ja.html", "extra/tommy.css", "lib/mysql.rb", "lib/mysql/version.rb", "tasks/gem.rake", "tasks/native.rake", "tasks/vendor_mysql.rake", "test/test_mysql.rb", ".gemtest"]
  s.homepage = %q{http://github.com/luislavena/mysql-gem}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.rubyforge_project = %q{mysql-win}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{This is the MySQL API module for Ruby}
  s.test_files = ["test/test_mysql.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rdoc>, ["~> 3.10"])
      s.add_development_dependency(%q<rake-compiler>, ["~> 0.8.1"])
      s.add_development_dependency(%q<hoe>, ["~> 3.5"])
    else
      s.add_dependency(%q<rdoc>, ["~> 3.10"])
      s.add_dependency(%q<rake-compiler>, ["~> 0.8.1"])
      s.add_dependency(%q<hoe>, ["~> 3.5"])
    end
  else
    s.add_dependency(%q<rdoc>, ["~> 3.10"])
    s.add_dependency(%q<rake-compiler>, ["~> 0.8.1"])
    s.add_dependency(%q<hoe>, ["~> 3.5"])
  end
end
