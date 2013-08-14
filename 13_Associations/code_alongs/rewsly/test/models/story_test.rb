require 'test_helper'

class StoryTest < ActiveSupport::TestCase
  
  test "that stories can have categories" do
    story = Story.new
    story.category = "arts"
    assert_equal "arts", story.category
  end
  
  
  test "that we can save a category" do
    story = Story.create!(:headline => "_", :content => "_", :category => "arts")
    
    assert_equal "arts", Story.find(story.id).category
  end

end
