require "test_helper"

feature "View Projects" do
  scenario "Visitor to Home Page Sees Projects" do
    visit root_path
    page.must_have_content "My Projects"
    page.wont_have_content "Goobye All!"
  end
end

feature "List Projects" do
  scenario "Visitor to Home Page Sees Listing of Projects" do
    visit root_path
    page.must_have_content "Crummy"
    page.must_have_content "Thundrs"
  end
end
