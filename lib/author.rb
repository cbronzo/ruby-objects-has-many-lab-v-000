class Author
  attr_accessor :name
  
  @@posts =[]
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def posts
    @posts
  end
  
  def add_post(title)
    self.posts << title
    title.author = self
    @@post_count += 1
  end
  
  def add_post_by_title(title)
    title = Post.new(name)
    self.posts << title
    title.author = self
    @@post_count += 1
  end
  
  def self.post_count
    @@post_count
  end
    
end

 