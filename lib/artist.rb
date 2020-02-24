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
  
  def finds_or_create_by_name(name)
    if self.name.nil?
      @artist = Artist.new(name)
    else
      self.name = name
      @artist = self
    end
    @artist
   
  end
    
  def print_songs
    Song.all.select{|x| x.artist == self}
  end
  
end