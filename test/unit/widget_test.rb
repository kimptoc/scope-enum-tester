require 'test_helper'

class WidgetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "basics" do
    #Widget.destroy_all
    assert_equal 0, Widget.all.count
    Widget.create(:name => "foo")
    assert_equal 1, Widget.all.count
  end
end
