class Artist
  @@all = []
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @@all << self
  end     
  
  def self.all
    @@all
  end  
  
  def new_song(nameArg, genreArg)
    Song.new(nameArg, self, genreArg)
  end  
  
  def songs 
    Song.all.select do |song|
      song.artist == self 
    end 
  end  
  
  # def genres
  #   songs.
  # end  
  
  
end   