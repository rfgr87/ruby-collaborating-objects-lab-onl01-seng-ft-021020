require "pry"

class Artist 
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  def add_song(song)
    @song = song 
    song.artist = self
  end
  
  def songs 
    Song.all.select{|x| x.artist == self}
  end 
  
  
  def find_or_create_by_name(name)
  end
    
  #   if self.all.include?(name)
  #     @artist = self.all.select{|x| x.name == name}
  #   else
  #     @artist = Artist.new(name)
  #     @@all << @artist
  #   end
  #   @artist
  # end
    
  def print_songs
    Song.all.select do |x| 
      if x.artist == self
        x.name
      end
    end
  end
  
end