class Artist 
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def all 
    @@all 
  end
  
  def add_song(song)
    @song = song 
    song.artist = self
  end
  
  def songs 
    Songs.all.select{|x| x.artist == self}
  end 
  
  def fins_or_create_by_name(name)
    if self.name.nil?
      self = Artist.new(name)
    else
      self.name = name
    end
  end
    
  def print_songs
    Songs.all.select{|x| x.artist == self}
  end
  
end