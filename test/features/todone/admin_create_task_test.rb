require "test_helper"

feature "Admin Views Tasks" do
  scenario "Visit To Done Index Page" do
    visit todones_path
    page.must_have_content "Journal"
    page.must_have_content "Practice"
  end
end

feature "Admin Can Create New Task" do
  scenario "Admin Enters a New List of Tasks" do
    sign_in_admin
    visit todones_path
    page.must_have_content "New Todone"
    click_on 'New Todone'
    fill_in 'Tasklist', with: todones(:today).tasklist
    click_on 'Create Todone'
    page.must_have_content 'Todone was successfully created.'
  end
end

feature "Admin Can Update A Task" do
  scenario "Admin Updates An Existing Task" do
    sign_in_admin
    visit todones_path
    click_on 'Edit'
    fill_in 'Tasklist', with: 'Updated Task List'
    click_on 'Update Todone'
    page.must_have_content 'Updated Task List'
  end
end
