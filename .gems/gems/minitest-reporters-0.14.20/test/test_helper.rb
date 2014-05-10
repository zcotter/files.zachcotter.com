require "bundler/setup"
require "minitest/autorun"
require "minitest/reporters"

module MiniTestReportersTest
  class TestCase < MiniTest::Unit::TestCase
  end
end

# Testing the built-in reporters using automated unit testing would be extremely
# brittle. Consequently, there are no unit tests for them.  If you'd like to run
# all the reporters sequentially on a fake test suite, run `rake gallery`.

if ENV["REPORTER"]
  reporter_klass = MiniTest::Reporters.const_get(ENV["REPORTER"])
  MiniTest::Reporters.use!(reporter_klass.new)
else
  MiniTest::Reporters.use!(MiniTest::Reporters::DefaultReporter.new)
  MiniTest::Reporters.use!(MiniTest::Reporters::DefaultReporter.new)
end
