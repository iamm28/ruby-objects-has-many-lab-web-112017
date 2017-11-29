class Author
  attr_reader :posts
  attr_accessor :name
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post_inst)
     post_inst.author = (self)
     @posts << post_inst
     @@post_count += 1
   end

  def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.author = (self)
    @posts << new_post
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end
end
