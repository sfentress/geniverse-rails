require 'spec_helper'

describe Activity do
  before(:each) do
    @valid_attributes = {
      :initial_alleles => "value for initial_alleles",
      :base_channel_name => "value for base_channel_name",
      :max_users_in_room => 1,
      :send_bred_dragons => false
    }
  end

  it "should create a new instance given valid attributes" do
    Activity.create!(@valid_attributes)
  end
end
