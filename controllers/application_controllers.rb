require 'sinatra'
require 'sinatra/base'
require 'sass'
require 'slim'
require 'coffee-script'


class ApplicationController < Sinatra::Base
    
  #set :public_folder, Proc.new { File.join(root, "public") }
  #set :views, Proc.new { File.join(root, "views") }
  set :public_folder, Proc.new { File.join(root, "../public") }
  set :views, Proc.new { File.join(root, "../views") }

  enable :sessions, :method_override    
  
  not_found{ slim :not_found }
end