load 'tasks/otr-activerecord.rake'

namespace :db do
  task :environment do
    require_relative 'boot'
  end
end

namespace :g do
  desc 'Generate migration'
  task :migration do
    Rake::Task['db:create_migration'].invoke(ARGV[1])
    abort
  end
end
