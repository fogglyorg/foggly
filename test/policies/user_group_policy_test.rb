require 'test_helper'

class UserGroupPolicyTest < ActiveSupport::TestCase
  setup do
    @user = users(:alice)
  end

  test 'can update owned user groups' do
    assert_permit @user, user_groups(:one), :update?
  end

  test 'cannot update not owned user groups' do
    refute_permit @user, user_groups(:two), :update?
  end
end