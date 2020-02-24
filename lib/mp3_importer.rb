class MP3Importer
  attr_accesor :path
  def initialize(path)
    @path = path
    @mp3_file_names = []
  end
  
  def files(path)
    @mp3_file_names = Dir.entries(path)
    @mp3_file_names
  end
  
  def import
    @mp3_file_names.each do |x|
      Song.new_by_filename(x)
    end
  end
    
end