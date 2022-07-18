# ENV['SINATRA_ENV'] ||= "development"

require_relative './config/environment'
require 'sinatra/activerecord/rake'


desc "rake console"
task :console do 
    Pry.start
end

desc "reset db"
task :reset_db do
    puts "Dropping the database"
    system "rm ./db/development.sqlite"
    system "rm ./db/schema.rb"
    system "rm ./db/schema.rb"
    puts "Running Migrations"
    system "rake db:migrate"
    puts "Seeding the database"
    system "rake db:seed"
    puts "Done seeding" 
end