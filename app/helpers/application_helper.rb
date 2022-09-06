module ApplicationHelper
  def category_tag(category)
    case category.name
    when "Hike" then "tag-dark"
    when "Swim" then "tag-middle"
    when "Sightseeing" then "tag-green"
    when "Walk" then "tag-light"
    end
  end

end
