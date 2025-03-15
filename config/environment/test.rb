require 'dotenv'

begin
  env = Dotenv.load!('.env.test')
  raise('Unable to find DATABASE_URL env') unless env['DATABASE_URL']
rescue Errno::ENOENT 
  raise('Unable to load .env.test')
end
