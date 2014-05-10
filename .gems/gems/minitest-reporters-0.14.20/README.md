# minitest-reporters - create customizable MiniTest output formats [![Build Status](https://secure.travis-ci.org/CapnKernul/minitest-reporters.png)](http://travis-ci.org/CapnKernul/minitest-reporters)

Death to haphazard monkey-patching! Extend MiniTest through simple hooks.

## Installation ##

    gem install minitest-reporters

## Usage ##

In your `test_helper.rb` file, add the following lines:

```ruby
require "minitest/reporters"
MiniTest::Reporters.use!
```

This will swap out the MiniTest runner to the custom one used by minitest-reporters and use the correct reporters for Textmate, Rubymine, and the console. If you would like to write your own reporter, just `include MiniTest::Reporter` and override the methods you'd like. Take a look at the provided reporters for examples.

Don't like the default progress bar reporter?

```ruby
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new
```

Want to use multiple reporters?

```ruby
MiniTest::Reporters.use! [MiniTest::Reporters::SpecReporter.new, MiniTest::Reporters::GuardReporter.new]
```

The following reporters are provided:

```ruby
MiniTest::Reporters::DefaultReporter  # => Redgreen-capable version of standard MiniTest reporter
MiniTest::Reporters::SpecReporter     # => Turn-like output that reads like a spec
MiniTest::Reporters::ProgressReporter # => Fuubar-like output with a progress bar
MiniTest::Reporters::RubyMateReporter # => Simple reporter designed for RubyMate
MiniTest::Reporters::RubyMineReporter # => Reporter designed for RubyMine IDE and TeamCity CI server
MiniTest::Reporters::GuardReporter    # => Integrates with guard-minitest to provide on-screen notifications
MiniTest::Reporters::JUnitReporter    # => JUnit test reporter designed for JetBrains TeamCity
```

Options can be passed to these reporters at construction-time, e.g. to force
color output from `DefaultReporter`:

```ruby
MiniTest::Reporters.use! [MiniTest::Reporters::SpecReporter.new(:color => true)]
```

## Caveats ##

If you are using minitest-reporters with ActiveSupport 3.x, make sure that you require ActiveSupport before invoking `MiniTest::Reporters.use!`. Minitest-reporters fixes incompatibilities caused by monkey patches in ActiveSupport 3.x. ActiveSupport 4.x is unaffected.

## Note on Patches/Pull Requests ##

* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a future version unintentionally.
* Commit, but do not mess with the `Rakefile`. If you want to have your own version, that is fine but bump the version in a commit by itself in another branch so I can ignore it when I pull.
* Send me a pull request. Bonus points for git flow feature branches.

## Resources ##

* [GitHub Repository](https://github.com/CapnKernul/minitest-reporters)
* [Documentation](http://rubydoc.info/github/CapnKernul/minitest-reporters)

## License ##

Minitest-reporters is licensed under the MIT License. See `LICENSE` for details.
