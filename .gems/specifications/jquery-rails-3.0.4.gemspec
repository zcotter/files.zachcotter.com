# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{jquery-rails}
  s.version = "3.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Andr\303\251 Arko"]
  s.date = %q{2013-07-11 00:00:00.000000000Z}
  s.description = %q{This gem provides jQuery and the jQuery-ujs driver for your Rails 3 application.}
  s.email = ["andre@arko.net"]
  s.files = [".gitignore", "CHANGELOG.md", "CONTRIBUTING.md", "Gemfile", "LICENSE", "README.md", "Rakefile", "VERSIONS.md", "jquery-rails.gemspec", "lib/generators/jquery/install/install_generator.rb", "lib/jquery-rails.rb", "lib/jquery/assert_select.rb", "lib/jquery/rails.rb", "lib/jquery/rails/engine.rb", "lib/jquery/rails/railtie.rb", "lib/jquery/rails/version.rb", "vendor/assets/javascripts/jquery.js", "vendor/assets/javascripts/jquery.min.js", "vendor/assets/javascripts/jquery.min.map", "vendor/assets/javascripts/jquery_ujs.js"]
  s.homepage = %q{http://rubygems.org/gems/jquery-rails}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{jquery-rails}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Use jQuery with Rails 3}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>, [">= 3.0", "< 5.0"])
      s.add_runtime_dependency(%q<thor>, [">= 0.14", "< 2.0"])
    else
      s.add_dependency(%q<railties>, [">= 3.0", "< 5.0"])
      s.add_dependency(%q<thor>, [">= 0.14", "< 2.0"])
    end
  else
    s.add_dependency(%q<railties>, [">= 3.0", "< 5.0"])
    s.add_dependency(%q<thor>, [">= 0.14", "< 2.0"])
  end
end
