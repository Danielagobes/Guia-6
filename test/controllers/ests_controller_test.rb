require "test_helper"

class EstsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @est = ests(:one)
  end

  test "should get index" do
    get ests_url
    assert_response :success
  end

  test "should get new" do
    get new_est_url
    assert_response :success
  end

  test "should create est" do
    assert_difference('Est.count') do
      post ests_url, params: { est: { apellidos: @est.apellidos, carnet: @est.carnet, carrera: @est.carrera, celular: @est.celular, nacimiento: @est.nacimiento, nombres: @est.nombres } }
    end

    assert_redirected_to est_url(Est.last)
  end

  test "should show est" do
    get est_url(@est)
    assert_response :success
  end

  test "should get edit" do
    get edit_est_url(@est)
    assert_response :success
  end

  test "should update est" do
    patch est_url(@est), params: { est: { apellidos: @est.apellidos, carnet: @est.carnet, carrera: @est.carrera, celular: @est.celular, nacimiento: @est.nacimiento, nombres: @est.nombres } }
    assert_redirected_to est_url(@est)
  end

  test "should destroy est" do
    assert_difference('Est.count', -1) do
      delete est_url(@est)
    end

    assert_redirected_to ests_url
  end
end
