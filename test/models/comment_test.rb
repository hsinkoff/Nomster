require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "rating is humanized" do
  	u = FactoryGirl.create(:user)
  	
  	comment = FactoryGirl.create(:comment, :user => u, :rating => '1_star')
 	expected = "One star"
 	actual = comment.humanized_rating
 	assert_equal expected, actual
 end

end

