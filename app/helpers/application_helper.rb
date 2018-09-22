module ApplicationHelper
  def hide_social_media?
    content_for?(:hide_social_media)
  end
end
