module ApplicationHelper
  def avatar_url(user)
  gravatar_id = Digest::MD5::hexdigest(user.email).downcase
  gravatar_url = "http://gravatar.com/avatar/#{gravatar_id}.png?s=48"
  end
end
