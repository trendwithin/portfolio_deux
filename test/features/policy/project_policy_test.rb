require "test_helper"

  feature 'Guest Tries Fills Out A Project' do
    scenario 'Guest goes to path for new project' do
      project_policy = guest_policy
      assert !project_policy.new?
  end
end

  feature 'Guest Tries to Create a Project' do
    scenario 'Guess Passes Data to Create' do
      project_policy = guest_policy
      assert !project_policy.create?
    end
  end

