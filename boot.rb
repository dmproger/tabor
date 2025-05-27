ENV['ENV'] ||= 'dev'

require 'bundler/setup'

ROOT = __dir__

require "#{ROOT}/config/environment"
require "#{ROOT}/config/storage"
