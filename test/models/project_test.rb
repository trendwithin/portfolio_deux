require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  def setup
    @project = Project.new(title: "New Title", technologies: "New Tech", description: "New Description")
  end

  test "should be valid" do
    assert @project.valid?
  end

  test "title should be present" do
    @project.title = "    "
    assert_not @project.valid?
  end

  test "technologies should be present" do
    @project.technologies = "     "
    assert_not @project.valid?
  end

  test "description should be present" do
    @project.description = "     "
    assert_not @project.valid?
  end
end
