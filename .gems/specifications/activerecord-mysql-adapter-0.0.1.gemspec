# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{activerecord-mysql-adapter}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Andrey Deryabin"]
  s.date = %q{2012-11-26}
  s.description = %q{An ActiveRecord adapter for MySQL, based on mysql gem.}
  s.email = ["deriabin@gmail.com"]
  s.files = [".gitignore", "Gemfile", "LICENSE.txt", "README.md", "Rakefile", "activerecord-mysql-adapter.gemspec", "lib/active_record/connection_adapters/mysql_adapter.rb", "lib/activerecord-mysql-adapter.rb", "lib/activerecord-mysql-adapter/version.rb"]
  s.homepage = %q{}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{An ActiveRecord adapter for MySQL, based on mysql gem.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mysql>, [">= 2.9.0"])
      s.add_runtime_dependency(%q<activerecord>, [">= 3.2.9"])
      s.add_runtime_dependency(%q<activesupport>, [">= 3.2.9"])
    else
      s.add_dependency(%q<mysql>, [">= 2.9.0"])
      s.add_dependency(%q<activerecord>, [">= 3.2.9"])
      s.add_dependency(%q<activesupport>, [">= 3.2.9"])
    end
  else
    s.add_dependency(%q<mysql>, [">= 2.9.0"])
    s.add_dependency(%q<activerecord>, [">= 3.2.9"])
    s.add_dependency(%q<activesupport>, [">= 3.2.9"])
  end
end
