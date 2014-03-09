json.posts @posts do
  json.extract! post, :id, :title, :body, :comment_ids
end

json.comments @comments do |comment|
  json.extract! comment, :id, :body
end
