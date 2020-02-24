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
    @artist = 
    if Artist.all.include?(filename.split(" - ")[0])
      Artist.all.select{|x| x.name == filename.split(" - ")[0]} 
    else
      Artist.new(filename.split(" - ")[0])
    end
    @song.artist = @artist
    @song
  end

  def artist_name=(name)
    @artist_object = 
    if Artist.all.include?(name)
      Artist.all.select{|x| x.name == name} 
    else
      Artist.new(name)
    end
    @artist_object
  end
    
  def find_or_create_by_name
  
    
end 