class PostResource
  include Alba::Resource

  attributes :title

  many :comments do
    attributes :body
  end
end
