# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{minitest-reporters}
  s.version = "0.14.21"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Alexander Kern"]
  s.date = %q{2013-09-10}
  s.description = %q{Death to haphazard monkey-patching! Extend MiniTest through simple hooks.}
  s.email = ["alex@kernul.com"]
  s.files = [".gitignore", ".travis.yml", ".yardopts", "Gemfile", "LICENSE", "README.md", "Rakefile", "lib/minitest/around_test_hooks.rb", "lib/minitest/extensible_backtrace_filter.rb", "lib/minitest/old_activesupport_fix.rb", "lib/minitest/relative_position.rb", "lib/minitest/reporter.rb", "lib/minitest/reporter_runner.rb", "lib/minitest/reporters.rb", "lib/minitest/reporters/default_reporter.rb", "lib/minitest/reporters/guard_reporter.rb", "lib/minitest/reporters/junit_reporter.rb", "lib/minitest/reporters/progress_reporter.rb", "lib/minitest/reporters/ruby_mate_reporter.rb", "lib/minitest/reporters/rubymine_reporter.rb", "lib/minitest/reporters/spec_reporter.rb", "lib/minitest/reporters/version.rb", "lib/minitest/test_recorder.rb", "lib/minitest/test_runner.rb", "minitest-reporters.gemspec", "test/gallery/bad_test.rb", "test/gallery/good_test.rb", "test/integration/fixtures/junit_filename_bug_example_test.rb", "test/integration/reporters/junit_reporter_test.rb", "test/test_helper.rb", "test/unit/minitest/extensible_backtrace_filter_test.rb", "test/unit/minitest/reporter_test.rb", "test/unit/minitest/reporters_test.rb"]
  s.homepage = %q{https://github.com/CapnKernul/minitest-reporters}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{minitest-reporters}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Create customizable MiniTest output formats}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<minitest>, [">= 2.12", "< 5.0"])
      s.add_runtime_dependency(%q<ansi>, [">= 0"])
      s.add_runtime_dependency(%q<powerbar>, [">= 0"])
      s.add_runtime_dependency(%q<builder>, [">= 0"])
      s.add_development_dependency(%q<maruku>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<minitest>, [">= 2.12", "< 5.0"])
      s.add_dependency(%q<ansi>, [">= 0"])
      s.add_dependency(%q<powerbar>, [">= 0"])
      s.add_dependency(%q<builder>, [">= 0"])
      s.add_dependency(%q<maruku>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<minitest>, [">= 2.12", "< 5.0"])
    s.add_dependency(%q<ansi>, [">= 0"])
    s.add_dependency(%q<powerbar>, [">= 0"])
    s.add_dependency(%q<builder>, [">= 0"])
    s.add_dependency(%q<maruku>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
