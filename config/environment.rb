raise 'Unable to find ENVIRONMENT env' unless ENV['ENVIRONMENT']

begin
  require_relative "environment/#{ENV['ENVIRONMENT']}"
rescue LoadError
  raise "Unable to load config/#{ENV['ENVIRONMENT']}.rb"
end
