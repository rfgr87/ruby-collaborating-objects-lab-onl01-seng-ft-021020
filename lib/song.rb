class Song 
  attr_accessor :name, :artist 
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(filename)
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
    if Artist.all.any? do |x| 
        if x.name == name
          @artist_object = x
          self.artist = @artist_object
          return @artist_object
        end
      end
    else
      @artist_object = Artist.new(name)
      self.artist = @artist_object
    end
    @artist_object
  end
    
  def self.find_or_create_by_name(name)
    if Artist.all.include?(name)
      @artist = Artist.all.select{|x| x.name == name}
    else
      @artist = Artist.new(name)
    end
  end
  
end 