json.array! @posts do |post|
  json.title post.title
  json.array! post.comments do |comment|
    json.body comment.body
  end
end
