ENV['ENV'] = 'test'

require 'rake'
require 'byebug'
require_relative '../boot'

Rake.load_rakefile('Rakefile')
Rake::Task['db:migrate'].invoke
