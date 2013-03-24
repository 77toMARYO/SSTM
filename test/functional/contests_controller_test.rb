require 'test_helper'

class ContestsControllerTest < ActionController::TestCase
  setup do
    @contest = contests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contest" do
    assert_difference('Contest.count') do
      post :create, contest: { application_period: @contest.application_period, description: @contest.description, end: @contest.end, master: @contest.master, start: @contest.start, state: @contest.state, title: @contest.title, total_work: @contest.total_work }
    end

    assert_redirected_to contest_path(assigns(:contest))
  end

  test "should show contest" do
    get :show, id: @contest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contest
    assert_response :success
  end

  test "should update contest" do
    put :update, id: @contest, contest: { application_period: @contest.application_period, description: @contest.description, end: @contest.end, master: @contest.master, start: @contest.start, state: @contest.state, title: @contest.title, total_work: @contest.total_work }
    assert_redirected_to contest_path(assigns(:contest))
  end

  test "should destroy contest" do
    assert_difference('Contest.count', -1) do
      delete :destroy, id: @contest
    end

    assert_redirected_to contests_path
  end
end
