require "test_helper"

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @category = categories(:valid)
  end

  test "should get index" do
    get categories_url
    assert_response :success
  end

  test "should get new" do
    get categories_new_url
    assert_response :success
  end

  test "should get create" do
    post categories_url, params: { category: { name: @category.name, description: @category.description } }
    assert_response :redirect
  end

  test "should go to new category form and create category" do
    get categories_new_url
    assert_response :success
    assert_difference "Category.count", 1 do
      post categories_url, params: { category: { name: @category.name, description: @category.description } }
      assert_response :redirect
    end
    follow_redirect!
    assert_response :success
  end

  test "should get show" do
    get category_url(@category)
    assert_response :success
  end

end