require 'rubygems'
require 'erb'
require 'sinatra'
require 'sinatra/base'
require_relative 'config/connectdb'
require_relative 'models/zombie'
require_relative 'controllers/application_controllers'
require_relative 'controllers/zombies_controllers'

begin
  
Dir.glob('/{models,controllers}/*.rb').each { |file| require file }
 
ZombiesController.run!
end

