require 'test_helper'

  feature 'Guest Tries Fills Out A Todone' do
    scenario 'Guest goes to path for new todone' do
      todone_policy = guest_tasklist
      assert !todone_policy.new?
    end
  end

  feature 'Guest Tries to Create a Todone' do
    scenario 'Guess Passes Data to Create' do
      todone_policy = guest_tasklist
      assert !todone_policy.create?
    end
  end
