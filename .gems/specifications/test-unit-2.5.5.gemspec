# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{test-unit}
  s.version = "2.5.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Kouhei Sutou", "Haruka Yoshihara"]
  s.date = %q{2013-05-18}
  s.description = %q{Ruby 1.9.x bundles minitest not Test::Unit. Test::Unit
bundled in Ruby 1.8.x had not been improved but unbundled
Test::Unit (test-unit) is improved actively.
}
  s.email = ["kou@cozmixng.org", "yoshihara@clear-code.com"]
  s.files = ["README.textile", "TODO", "Rakefile", "COPYING", "GPL", "LGPL", "PSFL", "lib/test-unit.rb", "lib/test/unit.rb", "lib/test/unit/attribute.rb", "lib/test/unit/data.rb", "lib/test/unit/color.rb", "lib/test/unit/version.rb", "lib/test/unit/runner/emacs.rb", "lib/test/unit/runner/console.rb", "lib/test/unit/runner/xml.rb", "lib/test/unit/ui/testrunnerutilities.rb", "lib/test/unit/ui/emacs/testrunner.rb", "lib/test/unit/ui/testrunner.rb", "lib/test/unit/ui/xml/testrunner.rb", "lib/test/unit/ui/console/outputlevel.rb", "lib/test/unit/ui/console/testrunner.rb", "lib/test/unit/ui/testrunnermediator.rb", "lib/test/unit/assertionfailederror.rb", "lib/test/unit/failure.rb", "lib/test/unit/autorunner.rb", "lib/test/unit/fault-location-detector.rb", "lib/test/unit/exceptionhandler.rb", "lib/test/unit/assertions.rb", "lib/test/unit/error.rb", "lib/test/unit/omission.rb", "lib/test/unit/fixture.rb", "lib/test/unit/collector/descendant.rb", "lib/test/unit/collector/load.rb", "lib/test/unit/collector/xml.rb", "lib/test/unit/collector/dir.rb", "lib/test/unit/collector/objectspace.rb", "lib/test/unit/code-snippet-fetcher.rb", "lib/test/unit/attribute-matcher.rb", "lib/test/unit/testsuitecreator.rb", "lib/test/unit/color-scheme.rb", "lib/test/unit/testcase.rb", "lib/test/unit/util/method-owner-finder.rb", "lib/test/unit/util/output.rb", "lib/test/unit/util/procwrapper.rb", "lib/test/unit/util/observable.rb", "lib/test/unit/util/backtracefilter.rb", "lib/test/unit/pending.rb", "lib/test/unit/testresult.rb", "lib/test/unit/collector.rb", "lib/test/unit/diff.rb", "lib/test/unit/priority.rb", "lib/test/unit/notification.rb", "lib/test/unit/testsuite.rb", "sample/test_subtracter.rb", "sample/subtracter.rb", "sample/test_user.rb", "sample/test_adder.rb", "sample/adder.rb", "test/testunit-test-util.rb", "test/test-testcase.rb", "test/ui/test_testrunmediator.rb", "test/test_testresult.rb", "test/test-pending.rb", "test/test-emacs-runner.rb", "test/test-fixture.rb", "test/test-attribute.rb", "test/test-attribute-matcher.rb", "test/test_failure.rb", "test/test-data.rb", "test/test_testsuite.rb", "test/collector/test_objectspace.rb", "test/collector/test-descendant.rb", "test/collector/test_dir.rb", "test/collector/test-load.rb", "test/run-test.rb", "test/test-assertions.rb", "test/test-priority.rb", "test/util/test_backtracefilter.rb", "test/util/test_observable.rb", "test/util/test_procwrapper.rb", "test/util/test-method-owner-finder.rb", "test/util/test-output.rb", "test/fixtures/no-header.tsv", "test/fixtures/no-header.csv", "test/fixtures/header-label.tsv", "test/fixtures/header.csv", "test/fixtures/plus.csv", "test/fixtures/header-label.csv", "test/fixtures/header.tsv", "test/test-fault-location-detector.rb", "test/test-code-snippet.rb", "test/test_error.rb", "test/test-diff.rb", "test/test-notification.rb", "test/test-color-scheme.rb", "test/test-omission.rb", "test/test-color.rb"]
  s.homepage = %q{http://test-unit.rubyforge.org/}
  s.licenses = ["Ruby's and PSFL (lib/test/unit/diff.rb)"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{test-unit}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{test-unit - Improved version of Test::Unit bundled in Ruby 1.8.x.}
  s.test_files = ["test/testunit-test-util.rb", "test/test-testcase.rb", "test/ui/test_testrunmediator.rb", "test/test_testresult.rb", "test/test-pending.rb", "test/test-emacs-runner.rb", "test/test-fixture.rb", "test/test-attribute.rb", "test/test-attribute-matcher.rb", "test/test_failure.rb", "test/test-data.rb", "test/test_testsuite.rb", "test/collector/test_objectspace.rb", "test/collector/test-descendant.rb", "test/collector/test_dir.rb", "test/collector/test-load.rb", "test/run-test.rb", "test/test-assertions.rb", "test/test-priority.rb", "test/util/test_backtracefilter.rb", "test/util/test_observable.rb", "test/util/test_procwrapper.rb", "test/util/test-method-owner-finder.rb", "test/util/test-output.rb", "test/fixtures/no-header.tsv", "test/fixtures/no-header.csv", "test/fixtures/header-label.tsv", "test/fixtures/header.csv", "test/fixtures/plus.csv", "test/fixtures/header-label.csv", "test/fixtures/header.tsv", "test/test-fault-location-detector.rb", "test/test-code-snippet.rb", "test/test_error.rb", "test/test-diff.rb", "test/test-notification.rb", "test/test-color-scheme.rb", "test/test-omission.rb", "test/test-color.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<RedCloth>, [">= 0"])
      s.add_development_dependency(%q<packnga>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<RedCloth>, [">= 0"])
      s.add_dependency(%q<packnga>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<RedCloth>, [">= 0"])
    s.add_dependency(%q<packnga>, [">= 0"])
  end
end
