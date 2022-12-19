require 'simplecov'
require 'simplecov-lcov'
# require 'coveralls'

SimpleCov::Formatter::LcovFormatter.config.report_with_single_file = true
SimpleCov.formatter = SimpleCov::Formatter::LcovFormatter
# SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
#   # SimpleCov::Formatter::HTMLFormatter,
#   SimpleCov.formatter = SimpleCov::Formatter::LcovFormatter
#   # Coveralls::SimpleCov::Formatter
# ])

SimpleCov.start do
   add_filter "/spec/"
end

require File.join File.dirname(__FILE__), '../run.rb'
require File.join File.dirname(__FILE__), '../run_two.rb'
