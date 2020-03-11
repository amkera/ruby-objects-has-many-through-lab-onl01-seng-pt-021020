require 'pry'

class Artist 
  attr_accessor :name, :artist, :genre
  @@all = []
  
  def self.all
    @@all 
  end 
  
  def initialize(name)
    @name = name 
    @artist = artist
    @genre = genre 
    @@all << self 
  end 
  
  def new_song(name, genre) #given a name and genre,
    song = Song.new(name, self, genre) 
    #creates a new song associated with that artist 
    
    self.songs.last 
    
    #self is an instance of artist, self.songs gets all the songs associated with an artist, and .last gets the most recent entry into the array and returns it so you are looking at the song you JUST added. 
    
    #artist is not taken in as an argument because self is artist 
    #This creates a new song, and associates the song to the artist that created it. 
  end 
  
  def songs
    Song.all.select {|song| song.artist == self} #returns all songs associated with this artist 
  end 
  
  def genres 
    Song.all.map {|song| song.genre} #we can't do what we did above in the songs method because we are in the Artist class. 
  end 
  
end 
    