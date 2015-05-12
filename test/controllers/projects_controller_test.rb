require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  include Devise::TestHelpers

  setup do
    @project = projects(:portfolio)
  end

  test "should get projects index" do
    get :index
    assert_response :success
  end

  test "should show project" do
    get :show, id: @project
    assert_response :success
  end
end
