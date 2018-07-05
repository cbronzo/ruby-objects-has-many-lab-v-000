class Author
  attr_accessor :name
  
  @@posts =[]
  
  def initialize(name)
    @name = name
  end
  
  def posts
    @@posts
  end
  
  def add_post(post)
    @@posts << post
    post.author = self
  end
  
  def add_post_by_title(title)
    post = Post.new(name)
    self.posts << title
    title.author = self
    @@post_count += 1
  end
  
  def self.post_count
    @@post_count
  end
    
end

 