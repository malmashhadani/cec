require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post :create, project: { background: @project.background, comment: @project.comment, county_id: @project.county_id, coursedepartment: @project.coursedepartment, coursenotes: @project.coursenotes, coursenumber: @project.coursenumber, description: @project.description, name: @project.name, objective: @project.objective, originator_id: @project.originator_id, picture: @project.picture, project_id: @project.project_id, synopsis: @project.synopsis, unit_id: @project.unit_id, url: @project.url, urldescription: @project.urldescription, zipcode_id: @project.zipcode_id }
    end

    assert_redirected_to project_path(assigns(:project))
  end

  test "should show project" do
    get :show, id: @project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project
    assert_response :success
  end

  test "should update project" do
    patch :update, id: @project, project: { background: @project.background, comment: @project.comment, county_id: @project.county_id, coursedepartment: @project.coursedepartment, coursenotes: @project.coursenotes, coursenumber: @project.coursenumber, description: @project.description, name: @project.name, objective: @project.objective, originator_id: @project.originator_id, picture: @project.picture, project_id: @project.project_id, synopsis: @project.synopsis, unit_id: @project.unit_id, url: @project.url, urldescription: @project.urldescription, zipcode_id: @project.zipcode_id }
    assert_redirected_to project_path(assigns(:project))
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end

    assert_redirected_to projects_path
  end
end
