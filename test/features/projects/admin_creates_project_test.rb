require "test_helper"

feature "Admin Project Creation" do
  scenario "Project Creation Page has New Project Link" do
    sign_in_admin
    visit projects_path
    page.must_have_content "New Project"
    page.wont_have_content "Goobye All!"
  end
end

feature "Admin Clicks New Project" do
  scenario 'Renders New Project Form' do
    sign_in_admin
    visit projects_path
    click_on 'New Project'
    page.must_have_content "New Project"
    page.must_have_content "Title"
    page.must_have_content "Description"
  end
end

feature "Admin Creates Project" do
  scenario "Project Created Successfully" do
    sign_in_admin
    visit projects_path
    click_on 'New Project'
    fill_in "Title", with: projects(:portfolio).title
    fill_in "Technologies", with: projects(:portfolio).technologies
    fill_in "Description", with: projects(:portfolio).description
    click_on "Create Project"
    page.must_have_content "Project was successfully created."
  end
end

feature "Admin Can Edit, Delete a post" do
  scenario "Admin views pages, links to edit, delete" do
    sign_in_admin
    visit root_path
    page.must_have_content "Edit"
    page.must_have_content "Destroy"
  end
end

feature 'Admin Edits Post' do
  scenario 'Admin Updates and existing post' do
    sign_in_admin
    visit root_path
    click_link('Edit', match: :first)
    fill_in 'Title', with: 'My New Portfolio'
    click_on 'Update Project'
    page.must_have_content "My New Portfolio"
  end
end

feature "Admin Deletes Post" do
  scenario "Admin clicks destroy" do
    sign_in_admin
    visit root_path
    click_link('Destroy', match: :first)
    page.wont_have_content "My Portfolio"
  end
end



