class Post::CreateForm

include ActiveModel::Model

validate :post_must_be_valid

def initialize(params={})
  @post=Post.new
  super(params)
end

def post
  @post
end

def post_attributes=(params={})
  @post.attributes= params
end

def save
  return false unless @post.valid?
  @post.save
end

private

def post_must_be_valid
  errors.add(:post, 'is not valid') unless @post.valid?
end

end
