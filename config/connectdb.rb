require 'rubygems'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => 'mysql',
  :encoding => 'utf8',
  :reconnect => true,
  :pool => 5,
  :host => 'db4free.net',
  :database => 'phim',
  :username => 'phim',
  :password => 'password',
  :port => 3306 
)


