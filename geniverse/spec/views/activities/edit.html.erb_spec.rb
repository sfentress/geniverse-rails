require 'spec_helper'

describe "/activities/edit.html.erb" do
  include ActivitiesHelper

  before(:each) do
    assigns[:activity] = @activity = stub_model(Activity,
      :new_record? => false,
      :initial_alleles => "value for initial_alleles",
      :base_channel_name => "value for base_channel_name",
      :max_users_in_room => 1,
      :send_bred_dragons => false
    )
  end

  it "renders the edit activity form" do
    render

    response.should have_tag("form[action=#{activity_path(@activity)}][method=post]") do
      with_tag('input#activity_initial_alleles[name=?]', "activity[initial_alleles]")
      with_tag('input#activity_base_channel_name[name=?]', "activity[base_channel_name]")
      with_tag('input#activity_max_users_in_room[name=?]', "activity[max_users_in_room]")
      with_tag('input#activity_send_bred_dragons[name=?]', "activity[send_bred_dragons]")
    end
  end
end
