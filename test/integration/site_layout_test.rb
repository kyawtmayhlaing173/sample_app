require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout liks" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path,count:2
  end
end
