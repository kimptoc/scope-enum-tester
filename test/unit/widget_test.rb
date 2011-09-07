require 'test_helper'

class WidgetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "basics" do
    #Widget.destroy_all
    assert_equal 0, Widget.all.count
    Widget.create(:name => "foo", :size => 3, :category => Category.all.first)
    assert_equal 1, Widget.all.count
  end

  test "scope" do
    assert_equal 0, Widget.all.count
    assert_equal 0, Widget.one.count
    assert_equal 0, Widget.two.count
    assert_not_nil Category.CAT1
    assert_not_nil Category.CAT2
    Widget.create(:name => "foo", :size => 2, :category => Category.CAT2)
    assert_equal 1, Widget.all.count
    assert_equal 0, Widget.one.count
    assert_equal 1, Widget.two.count

  end
end
