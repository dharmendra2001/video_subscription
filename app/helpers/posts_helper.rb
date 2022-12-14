module PostsHelper

  def premium_label(value)
    case value 
    when true
      text = 'Premium'
      badge_color = 'badge bg-success'
    when false
      text = 'Free'
      badge_color = 'badge bg-danger'
    end
    content_tag(:span, text, class: badge_color)
  end
end