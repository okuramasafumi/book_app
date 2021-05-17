class GenreResource
  include Alba::Resource

  key!

  attributes :id, :title, :description
  has_many :books, resource: 'BookResource'
end
