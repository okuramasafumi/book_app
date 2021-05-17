class BookResource
  include Alba::Resource

  key!

  attributes :id, :title, :description, :published_at
  has_many :authors, resource: 'AuthorResource'
  one :genre, resource: 'GenreResource'
end
