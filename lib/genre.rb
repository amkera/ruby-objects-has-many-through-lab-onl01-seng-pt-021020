class Genre 
  @@all = [] #all genres 
  
  attr_accessor :name 
  
  def self.all
    @@all 
  end 
  
  def initialize(name)
    @name = name 
    @@all << self
  end 
  
  def songs 
    Song.all.select {|song| song.genre == self}
  end 
  
  def artists
    Song.all.map {|song| song.artist} #A genre has many artists, through songs
  end 
    
  
end 

  
  