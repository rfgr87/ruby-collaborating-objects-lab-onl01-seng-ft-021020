class MP3Importer
  
  def initialize(file)
    @file = file
    @mp3_file_names = []
  end
  
  def files(file)
    @mp3_file_names = Dir.entries(file)
    @mp3_file_names
  end
  
  def import
    @mp3_file_names.each do |x|
      Song.new_by_filename(x)
    end
  end
    
end