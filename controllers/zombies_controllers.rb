class ZombiesController < ApplicationController
      
  get "/posts" do  
    @zombies = Zombie.all 
    @title = "posts | zombies"    
    erb :"/zombies/index"
  end
  
  get '/about/?' do
   @title = "About"
   erb :about
  end
  
  post "/posts" do
    @post = Zombie.new(params[:post])
    if @post.save
      redirect "posts"
    else
      erb :index
    end
  end
end
