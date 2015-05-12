require 'test_helper'

class TodoneTest < ActiveSupport::TestCase
  def setup
    @todone = Todone.new(tasklist: "New Task: ")
  end

  test "validates a new task valid" do
    assert @todone.valid?
  end

  test "Tasklist should be present" do
    @todone.tasklist = "     "
    assert_not @todone.valid?
  end
end
