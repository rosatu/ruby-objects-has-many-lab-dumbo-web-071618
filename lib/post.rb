class Post
  attr_accessor :title, :author

  @@all = []

  def initialize(title)
      @title = title
      @@all << self
  end

#Returns nil if the song does not have an artist
  def author_name
     @author.name
  end

  def self.all
      @@all
  end

  def author_name
    if @author != nil
      return @author.name
    end
  end
end
