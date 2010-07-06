require 'spec_helper'

describe "/activities/new.html.erb" do
  include ActivitiesHelper

  before(:each) do
    assigns[:activity] = stub_model(Activity,
      :new_record? => true,
      :initial_alleles => "value for initial_alleles",
      :base_channel_name => "value for base_channel_name",
      :max_users_in_room => 1,
      :send_bred_dragons => false
    )
  end

  it "renders new activity form" do
    render

    response.should have_tag("form[action=?][method=post]", activities_path) do
      with_tag("input#activity_initial_alleles[name=?]", "activity[initial_alleles]")
      with_tag("input#activity_base_channel_name[name=?]", "activity[base_channel_name]")
      with_tag("input#activity_max_users_in_room[name=?]", "activity[max_users_in_room]")
      with_tag("input#activity_send_bred_dragons[name=?]", "activity[send_bred_dragons]")
    end
  end
end
