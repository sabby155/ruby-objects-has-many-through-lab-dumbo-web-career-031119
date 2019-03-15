class Song 
  @@all = []
  attr_accessor :name, :artist, :genre
  # attr_reader
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist 
    @genre = genre
    @@all << self
  end  
  
  def self.all
    @@all
  end  
  
end   