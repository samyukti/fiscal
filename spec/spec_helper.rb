require 'bundler/setup'
Bundler.setup

require 'fiscal'

RSpec.configure do |config|
  config.expect_with(:rspec) { |c| c.syntax = :should }
end