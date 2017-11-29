class Artist
  attr_accessor :name
  attr_reader :songs
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song_inst)
    song_inst.artist= (self)
    @songs << song_inst
    @@song_count += 1
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    new_song.artist= (self)
    @songs << new_song
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end
end
