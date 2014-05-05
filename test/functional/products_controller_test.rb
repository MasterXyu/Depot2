require 'test_helper'

class ProductControllerTest<ActionController::TestCase
  setup do
    @product = products(:one)
    @update={
        title: 'Lorem Ipsum',
        description: 'Wibbless are fun',
        image_url: 'lorem.jpg',
        price: 19.95
    }
  end


  test "Should_get_index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "Should_get_new" do
    get :new
    assert_response :success
  end

  test "Should_create_product" do
    assert_difference('Product.count') do
      post :create, product: @update
    end

    assert_redirected_to product_path(assigns(:product))

  end

  test "should_update_product" do
    put :update, id: @product, product: @update
    assert_redirected_to product_path(assigns(:product))
  end

end