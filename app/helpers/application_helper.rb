# frozen_string_literal: true

module ApplicationHelper
  def flash_class(level)
    level_class = {
      'notice' => 'px-4 py-3 rounded-md bg-blue-50 text-blue-700',
      'success' => 'px-4 py-3 rounded-md bg-green-50 text-green-700',
      'error' => 'px-4 py-3 rounded-md bg-red-50 text-red-700',
      'alert' => 'px-4 py-3 rounded-md bg-yellow-50 text-yellow-700'
    }

    level_class[level]
  end
end
