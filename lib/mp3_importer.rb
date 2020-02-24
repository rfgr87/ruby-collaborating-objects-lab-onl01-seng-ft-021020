class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
    @mp3_file_names = []
  end
  
  def files
    @mp3_file_names = Dir.entries(@path).select {|f| !File.directory? f}
  end
  
  def import
    @mp3_file_names.each do |x|
      Song.new_by_filename(x)
    end
  end
    
end