# frozen_string_literal: true

# $redis = Redis.new(url: 'redis://localhost:6379')
$redis = Redis.new(url: ENV['REDIS_URL'])
