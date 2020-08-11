class Song
  attr_accessor :name, :artist 
  
  @@all = []
  
  def initialize(name)
    @name = name
   
  end
  
  def self.all
    @@all << self
  end
  
  
  
  def self.new_by_filename(file)
    song_info = file.chomp(".mp3").split(" - ")
    song = Song.new(song_info[1])
    song.artist_name = song_info[0]
    song
  end
  
  
end