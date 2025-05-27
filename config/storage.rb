require 'pg'
require 'otr-activerecord'

OTR::ActiveRecord.configure_from_url!(ENV['DATABASE_URL'])
OTR::ActiveRecord.establish_connection!
