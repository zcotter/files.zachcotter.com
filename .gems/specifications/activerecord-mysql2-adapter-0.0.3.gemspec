# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{activerecord-mysql2-adapter}
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Matthias Viehweger"]
  s.date = %q{2012-08-05}
  s.description = %q{extracted code from mysql2}
  s.email = ["kronn@kronn.de"]
  s.files = [".gitignore", ".rvmrc", "Gemfile", "LICENSE", "README.md", "Rakefile", "activerecord-mysql2-adapter.gemspec", "lib/active_record/connection_adapters/em_mysql2_adapter.rb", "lib/active_record/connection_adapters/mysql2_adapter.rb", "lib/active_record/fiber_patches.rb", "lib/activerecord-mysql2-adapter.rb", "lib/activerecord-mysql2-adapter/version.rb", "lib/arel/engines/sql/compilers/mysql2_compiler.rb"]
  s.homepage = %q{http://github.com/kronn/activerecord-mysql2-adapter}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{extracted code from mysql2}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mysql2>, [">= 0"])
    else
      s.add_dependency(%q<mysql2>, [">= 0"])
    end
  else
    s.add_dependency(%q<mysql2>, [">= 0"])
  end
end
