require 'pry'

class Author
attr_accessor :name, :posts

  def initialize(name)
  @name = name
  @posts = []
  end

  def posts
    @posts = Post.all.select do |post|
      post.author == self
    end
  end

  def add_post(post) #post is a post object/instance of the post class
    #the following code "tells the post who it belongs to => this particular author object"
    post.author = self #self is Author object/instance of the author class
  end

  def add_post_by_title(title)
    #creating a variable to store a new post object/instance of the post class
    title = Post.new(title)
    #we need the argument b/c when we defined Post class, we said during initialization
    #a post object needs an arg(title)
    #"associating that post with an author" adding the authot object to the post object
    title.author = self
  end

  def self.post_count
    #iterate over the @@all array(which is a class variable) in the Post class
    #select returns every value that returns true. We're searching for the songs all authors wrote
    # binding.pry
      Post.all.select {|post| post.author != nil}.length
      end

end
