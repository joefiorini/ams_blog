require 'test_helper'
require 'rails/performance_test_help'

class PostsIndexTest < ActionDispatch::PerformanceTest
  # Refer to the documentation for all available options
  # self.profile_options = { runs: 5, metrics: [:wall_time, :memory],
  #                          output: 'tmp/performance', formats: [:flat] }

  def setup
    posts = Fabricate.times(30, :post)
    posts.each do |post|
      Fabricate.times(10, :comment, post: post)
    end
  end

  test "posts/index - with has_many" do
    get "/posts"
  end

  test "posts/index - without has_many" do
    get "/posts/no_comments"
  end
end
