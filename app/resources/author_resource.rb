class AuthorResource
  include Alba::Resource

  key!

  attributes :id, :first_name, :last_name
  has_many :books, resource: 'BookResource'
end
