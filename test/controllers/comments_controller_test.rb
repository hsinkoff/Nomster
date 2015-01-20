require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "comments are created" do
    user = FactoryGirl.create(:user)
    sign_in user
    place = FactoryGirl.create(:place)
    post :create, :place_id => place.id, :comment => { 
        :rating => '1_star',
        :message => 'ick'}
    assert_response :success
    assert_redirected_to places_path
  end
end
