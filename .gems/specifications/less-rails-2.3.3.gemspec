# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{less-rails}
  s.version = "2.3.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ken Collins"]
  s.date = %q{2013-04-16}
  s.description = %q{The dynamic stylesheet language for the Rails asset pipeline. Allows other gems to extend Less load path.}
  s.email = ["ken@metaskills.net"]
  s.files = [".gitignore", ".travis.yml", "Appraisals", "CHANGELOG.md", "Gemfile", "Guardfile", "MIT-LICENSE", "README.md", "Rakefile", "gemfiles/rails31.gemfile", "gemfiles/rails32.gemfile", "gemfiles/rails40.gemfile", "less-rails.gemspec", "lib/less-rails.rb", "lib/less/rails.rb", "lib/less/rails/helpers.rb", "lib/less/rails/import_processor.rb", "lib/less/rails/railtie.rb", "lib/less/rails/template_handlers.rb", "lib/less/rails/version.rb", "lib/rails/generators/less/assets/assets_generator.rb", "lib/rails/generators/less/assets/templates/stylesheet.css.less", "lib/rails/generators/less/scaffold/scaffold_generator.rb", "test/cases/basics_spec.rb", "test/cases/generators_spec.rb", "test/cases/helpers_spec.rb", "test/cases/railtie_spec.rb", "test/dummy_app/app/assets/images/1x1.png", "test/dummy_app/app/assets/images/rails.png", "test/dummy_app/app/assets/stylesheets/basics.css.less", "test/dummy_app/app/assets/stylesheets/frameworks/bootstrap/mixins.less", "test/dummy_app/app/assets/stylesheets/frameworks/bootstrap/variables.less", "test/dummy_app/app/assets/stylesheets/helpers.css.less", "test/dummy_app/init.rb", "test/dummy_app/tmp/.gitkeep", "test/dummy_app/tmp/cache/.gitkeep", "test/dummy_app/vendor/assets/stylesheets/vendored.less", "test/spec_helper.rb"]
  s.homepage = %q{http://github.com/metaskills/less-rails}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{The dynamic stylesheet language for the Rails asset pipeline.}
  s.test_files = ["test/cases/basics_spec.rb", "test/cases/generators_spec.rb", "test/cases/helpers_spec.rb", "test/cases/railtie_spec.rb", "test/dummy_app/app/assets/images/1x1.png", "test/dummy_app/app/assets/images/rails.png", "test/dummy_app/app/assets/stylesheets/basics.css.less", "test/dummy_app/app/assets/stylesheets/frameworks/bootstrap/mixins.less", "test/dummy_app/app/assets/stylesheets/frameworks/bootstrap/variables.less", "test/dummy_app/app/assets/stylesheets/helpers.css.less", "test/dummy_app/init.rb", "test/dummy_app/tmp/.gitkeep", "test/dummy_app/tmp/cache/.gitkeep", "test/dummy_app/vendor/assets/stylesheets/vendored.less", "test/spec_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<less>, ["~> 2.3.1"])
      s.add_runtime_dependency(%q<actionpack>, [">= 3.1"])
      s.add_development_dependency(%q<appraisal>, [">= 0"])
      s.add_development_dependency(%q<minitest>, [">= 0"])
      s.add_development_dependency(%q<guard-minitest>, [">= 0"])
      s.add_development_dependency(%q<rails>, [">= 0"])
    else
      s.add_dependency(%q<less>, ["~> 2.3.1"])
      s.add_dependency(%q<actionpack>, [">= 3.1"])
      s.add_dependency(%q<appraisal>, [">= 0"])
      s.add_dependency(%q<minitest>, [">= 0"])
      s.add_dependency(%q<guard-minitest>, [">= 0"])
      s.add_dependency(%q<rails>, [">= 0"])
    end
  else
    s.add_dependency(%q<less>, ["~> 2.3.1"])
    s.add_dependency(%q<actionpack>, [">= 3.1"])
    s.add_dependency(%q<appraisal>, [">= 0"])
    s.add_dependency(%q<minitest>, [">= 0"])
    s.add_dependency(%q<guard-minitest>, [">= 0"])
    s.add_dependency(%q<rails>, [">= 0"])
  end
end
