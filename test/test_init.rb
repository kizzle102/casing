ENV['CONSOLE_DEVICE'] ||= 'stdout'
ENV['LOG_COLOR'] ||= 'on'
ENV['LOG_LEVEL'] ||= 'trace'

puts RUBY_DESCRIPTION

require_relative '../init.rb'

require 'pp'
require 'test_bench'; TestBench.activate
require 'telemetry/logger'
require 'casing/controls'

Telemetry::Logger::AdHoc.activate
