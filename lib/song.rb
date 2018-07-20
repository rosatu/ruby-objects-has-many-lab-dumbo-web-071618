class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
      @name = name
      @@all << self
  end

#Returns nil if the song does not have an artist
  def artist_name
    if @artist != nil
      return @artist.name
    end
  end


  def self.all
      @@all
  end
end
