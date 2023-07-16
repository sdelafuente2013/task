module ApplicationHelper
  def flash_class(level)
    case level
    when 'notice' then "px-4 py-3 rounded-md bg-blue-50 text-blue-700"
    when 'success' then "px-4 py-3 rounded-md bg-green-50 text-green-700"
    when 'error' then "px-4 py-3 rounded-md bg-red-50 text-red-700"
    when 'alert' then "px-4 py-3 rounded-md bg-yellow-50 text-yellow-700"
    end
  end

end
