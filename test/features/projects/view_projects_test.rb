require "test_helper"

feature "View Projects on Home Page" do
  scenario "Visitor to Home Page Sees Projects" do
    visit root_path
    page.must_have_content "My Projects"
    page.wont_have_content "New Project"
  end
end

feature "List Projects" do
  scenario "Visitor to Home Page Sees Listing of Projects" do
    visit root_path
    page.must_have_content "Crummy"
    page.must_have_content "Thundrs"
  end
end

feature "View Projects" do
  scenario "Visitor Visits Projects Page" do
    visit projects_path
    page.wont_have_content "New Project"
    page.wont_have_content "Edit Project"
  end
end

