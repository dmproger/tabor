raise 'Unable to find ENV env variable' unless ENV['ENV']

require 'dotenv'

begin
  Dotenv.load!(".env.#{ENV['ENV']}")
  raise('Unable to find DATABASE_URL env variable') unless ENV['DATABASE_URL']
rescue Errno::ENOENT
  raise("Unable to load .env.#{ENV['ENV']}")
end
