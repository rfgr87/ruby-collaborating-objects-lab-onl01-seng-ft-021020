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
    @song_name = filename.split(" - ")[0]
end 