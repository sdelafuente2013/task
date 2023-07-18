# frozen_string_literal: true

module ApplicationHelper
  def flash_class(level)
    level_class = {
      'notice' => 'bg-green-500',
      'success' => 'bg-blue-500',
      'alert' => 'bg-red-500'
    }

    level_class[level]
  end
end
