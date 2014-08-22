require 'test_helper'

class CompsControllerTest < ActionController::TestCase
  setup do
    @comp = comps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comp" do
    assert_difference('Comp.count') do
      post :create, comp: { address: @comp.address, agent_landlord_company: @comp.agent_landlord_company, annual_rent: @comp.annual_rent, basement: @comp.basement, comments: @comp.comments, contact: @comp.contact, cross_street_1: @comp.cross_street_1, cross_street_2: @comp.cross_street_2, date: @comp.date, email: @comp.email, frontage: @comp.frontage, ground: @comp.ground, history: @comp.history, mezz: @comp.mezz, second: @comp.second, street: @comp.street, telephone: @comp.telephone, term: @comp.term, third: @comp.third, updated_date: @comp.updated_date }
    end

    assert_redirected_to comp_path(assigns(:comp))
  end

  test "should show comp" do
    get :show, id: @comp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comp
    assert_response :success
  end

  test "should update comp" do
    patch :update, id: @comp, comp: { address: @comp.address, agent_landlord_company: @comp.agent_landlord_company, annual_rent: @comp.annual_rent, basement: @comp.basement, comments: @comp.comments, contact: @comp.contact, cross_street_1: @comp.cross_street_1, cross_street_2: @comp.cross_street_2, date: @comp.date, email: @comp.email, frontage: @comp.frontage, ground: @comp.ground, history: @comp.history, mezz: @comp.mezz, second: @comp.second, street: @comp.street, telephone: @comp.telephone, term: @comp.term, third: @comp.third, updated_date: @comp.updated_date }
    assert_redirected_to comp_path(assigns(:comp))
  end

  test "should destroy comp" do
    assert_difference('Comp.count', -1) do
      delete :destroy, id: @comp
    end

    assert_redirected_to comps_path
  end
end
