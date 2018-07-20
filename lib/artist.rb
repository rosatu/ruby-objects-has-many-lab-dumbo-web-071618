require 'pry'

class Artist
attr_accessor :name, :songs

  def initialize(name)
  @name = name
  @songs = []
  end

  def songs
    @songs = Song.all.select do |song|
      song.artist == self
    end
  end

  def add_song(song) #song is a song object/instance of the song class
    #the following code "tells the song who it belongs to => this particular artist object"
    song.artist = self #self is Artist object/instance of the artist class
  end
  #expect(adele.songs.last.name).to eq("Rolling in the Deep")
  #expect(adele.songs.last.artist).to eq(adele)
  def add_song_by_name(song_name)
    #creating a variable to store a new song object/instance of the song class
    song_name = Song.new(song_name)
    #we need the argument b/c when we defined song class, we said during initialization
    #a song object need an arg
    #"associating that song with an artist" adding the artist object to the song object
    song_name.artist = self
  end

  def self.song_count
    #iterate over the @@all array(which is a class variable) in the Song class
    #select returns every value that returns true. We're searching for the songs WE (this particular
    #instance of artist) wrote
    # binding.pry
      Song.all.select {|song| song.artist != nil}.length
  end

end
