module ApplicationHelper
  def category_tag(category)
    case category.name
    when "Hike" then "tag-orange"
    when "Swim" then "tag-sky"
    when "Sightseeing" then "tag-green"
    when "Skiing/Snowboarding" then "tag-pink"
    when "Mountainbiking" then "tag-purple"
    when "Climbing" then "tag-red"
    end
  end

end
