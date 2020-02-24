class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
    @mp3_file_names = []
  end
  
  def files(path)
    Dir.entries(path).select {|f| !File.directory? f}
    #Dir.entries(path)
  end
  
  def import
    @mp3_file_names.each do |x|
      Song.new_by_filename(x)
    end
  end
    
end