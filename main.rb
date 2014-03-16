require 'erb'
require '../config/connectdb.rb'


#Define Class for zombie
class Zombie < ActiveRecord::Base
  #has_many :tweets
  #attr_accessible :name, :graveyard, :id 
end

class Tweet < ActiveRecord::Base
  #belogs_to :zombie
  #attr_accessible :id, :status, :zombie_id
end

@zombie = Zombie.all
@zombie.each do |z|
  puts %{#{z.name} stay in #{z.graveyard}}
end

# class mapping with zombies
class Zombies 
  
  # get all record of zombies
  def index
    @zombie = Zombie.all
  end

  # render index file
  def createview(path,filename)
    findextemplate = path + filename +".erb"
    template_file = File.open(findextemplate, 'r')
    erb = ERB.new(template_file.read)
    
    findex = path+filename+".html"
    #if File.exist?(findex)
       #File.delete(findex)
    #end
    File.open(findex, 'w') { |file| file.write(erb.result(binding)) }
    template_file.close
  end

end

zomb = Zombies.new
zomb.index
zomb.createview("../views/","index")

