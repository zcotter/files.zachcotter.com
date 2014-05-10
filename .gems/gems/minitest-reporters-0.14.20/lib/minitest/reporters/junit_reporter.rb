require 'ansi/code'
require 'builder'
require 'fileutils'
module MiniTest
  module Reporters
    # A reporter for writing JUnit test reports
    # Intended for easy integration with CI servers - tested on JetBrains TeamCity
    #
    # Inspired by ci_reporter (see https://github.com/nicksieger/ci_reporter)
    # Also inspired by Marc Seeger's attempt at producing a JUnitReporter (see https://github.com/rb2k/minitest-reporters/commit/e13d95b5f884453a9c77f62bc5cba3fa1df30ef5)
    # Also inspired by minitest-ci (see https://github.com/bhenderson/minitest-ci)
    class JUnitReporter
      include Reporter

      def initialize(reports_dir = "test/reports", empty = true)
        @reports_path = File.absolute_path(reports_dir)

        if empty
          puts "Emptying #{@reports_path}"
          FileUtils.remove_dir(@reports_path) if File.exists?(@reports_path)
          FileUtils.mkdir_p(@reports_path)
        end
      end

      def after_suites(suites, type)
        puts "Writing XML reports to #{@reports_path}"
        runner.test_results.each do |suite, tests|
          suite_result = analyze_suite(suite, tests)

          xml = Builder::XmlMarkup.new(:indent => 2)
          xml.instruct!
          xml.testsuite(:name => suite, :skipped => suite_result[:skip_count], :failures => suite_result[:failure_count],
                        :errors => suite_result[:error_count], :tests => suite_result[:test_count],
                        :assertions => suite_result[:assertion_count], :time => suite_result[:time]) do
            tests.each do |test, test_runner|
              xml.testcase(:name => test_runner.test.to_s, :classname => suite, :assertions => test_runner.assertions,
                           :time => test_runner.time) do
                xml << xml_message_for(test_runner) if test_runner.result != :pass
              end
            end
          end
          File.open(filename_for(suite), "w") { |file| file << xml.target! }
        end
      end

      private

      def xml_message_for(test_runner)
        # This is a trick lifted from ci_reporter
        xml = Builder::XmlMarkup.new(:indent => 2, :margin => 2)

        def xml.trunc!(txt)
          txt.sub(/\n.*/m, '...')
        end

        test = test_runner.test
        e = test_runner.exception

        case test_runner.result
        when :skip
          xml.skipped(:type => test)
        when :error
          xml.error(:type => test, :message => xml.trunc!(e.message)) do
            xml.text!(message_for(test_runner))
          end
        when :failure
          xml.failure(:type => test, :message => xml.trunc!(e.message)) do
            xml.text!(message_for(test_runner))
          end
        end
      end

      def message_for(test_runner)
        suite = test_runner.suite
        test = test_runner.test
        e = test_runner.exception

        case test_runner.result
        when :pass then
          nil
        when :skip then
          "Skipped:\n#{test}(#{suite}) [#{location(e)}]:\n#{e.message}\n"
        when :failure then
          "Failure:\n#{test}(#{suite}) [#{location(e)}]:\n#{e.message}\n"
        when :error
          bt = filter_backtrace(test_runner.exception.backtrace).join "\n    "
          "Error:\n#{test}(#{suite}):\n#{e.class}: #{e.message}\n    #{bt}\n"
        end
      end


      def location(exception)
        last_before_assertion = ''
        exception.backtrace.reverse_each do |s|
          break if s =~ /in .(assert|refute|flunk|pass|fail|raise|must|wont)/
          last_before_assertion = s
        end
        last_before_assertion.sub(/:in .*$/, '')
      end

      def analyze_suite(suite, tests)
        result = Hash.new(0)
        tests.each do |test, test_runner|
          result[:"#{test_runner.result}_count"] += 1
          result[:assertion_count] += test_runner.assertions
          result[:test_count] += 1
          result[:time] += test_runner.time
        end
        result
      end

      def filename_for(suite)
        file_counter = 0
        filename = "TEST-#{suite.to_s[0..240].gsub(/[^a-zA-Z0-9]+/, '-')}.xml" #restrict max filename length, to be kind to filesystems
        while File.exists?(File.join(@reports_path, filename)) # restrict number of tries, to avoid infinite loops
          file_counter += 1
          filename = "TEST-#{suite}-#{file_counter}.xml"
          puts "Too many duplicate files, overwriting earlier report #{filename}" and break if file_counter >= 99
        end
        File.join(@reports_path, filename)
      end
    end
  end
end
