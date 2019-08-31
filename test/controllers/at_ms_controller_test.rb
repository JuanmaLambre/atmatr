require 'test_helper'

class AtMsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @atm = atms(:one)
  end

  test "should get index" do
    get atms_url
    assert_response :success
  end

  test "should get new" do
    get new_atm_url
    assert_response :success
  end

  test "should create atm" do
    assert_difference('Atm.count') do
      post atms_url, params: { atm: { bank: @atm.bank, blindness_assistance: @atm.blindness_assistance, city: @atm.city, code: @atm.code, commune: @atm.commune, dolars: @atm.dolars, id: @atm.id, lat: @atm.lat, location: @atm.location, long: @atm.long, neighborhood: @atm.neighborhood, network: @atm.network, second_street: @atm.second_street, street: @atm.street, street_number: @atm.street_number, terminals: @atm.terminals, zipcode: @atm.zipcode } }
    end

    assert_redirected_to atm_url(Atm.last)
  end

  test "should show atm" do
    get atm_url(@atm)
    assert_response :success
  end

  test "should get edit" do
    get edit_atm_url(@atm)
    assert_response :success
  end

  test "should update atm" do
    patch atm_url(@atm), params: { atm: { bank: @atm.bank, blindness_assistance: @atm.blindness_assistance, city: @atm.city, code: @atm.code, commune: @atm.commune, dolars: @atm.dolars, id: @atm.id, lat: @atm.lat, location: @atm.location, long: @atm.long, neighborhood: @atm.neighborhood, network: @atm.network, second_street: @atm.second_street, street: @atm.street, street_number: @atm.street_number, terminals: @atm.terminals, zipcode: @atm.zipcode } }
    assert_redirected_to atm_url(@atm)
  end

  test "should destroy atm" do
    assert_difference('Atm.count', -1) do
      delete atm_url(@atm)
    end

    assert_redirected_to atms_url
  end
end
