ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require "minitest/rails"

require "minitest/reporters"
Minitest::Reporters.use!(
  Minitest::Reporters::DefaultReporter.new(:color => true),
  ENV,
  Minitest.backtrace_filter
)

class ActiveSupport::TestCase
  ActiveRecord::Migration.check_pending!
  fixtures :all
end
