class Song 
  attr_accessor :title, :artist 
  @@all = []
  def initialize(title)
    @title = title 
    @@all << self
  end
  
  def all
    @@all
  end
  
  def new_by_filename(filename)
    @song_name = filename.split(" - ")[1]
    @song = Song.new(@song_name)
    @song.artist = filename.split(" - ")[0]
    
end 