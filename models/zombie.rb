class Zombie < ActiveRecord::Base
  has_many :tweets
  #attr_accessible :name, :graveyard, :id 
end


# test model output 
=begin
Zombie.order(:name).each do |z|
  puts %{#{z.name} stay in #{z.graveyard}}
end
=end