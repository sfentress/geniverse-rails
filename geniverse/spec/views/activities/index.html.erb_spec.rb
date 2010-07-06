require 'spec_helper'

describe "/activities/index.html.erb" do
  include ActivitiesHelper

  before(:each) do
    assigns[:activities] = [
      stub_model(Activity,
        :initial_alleles => "value for initial_alleles",
        :base_channel_name => "value for base_channel_name",
        :max_users_in_room => 1,
        :send_bred_dragons => false
      ),
      stub_model(Activity,
        :initial_alleles => "value for initial_alleles",
        :base_channel_name => "value for base_channel_name",
        :max_users_in_room => 1,
        :send_bred_dragons => false
      )
    ]
  end

  it "renders a list of activities" do
    render
    response.should have_tag("tr>td", "value for initial_alleles".to_s, 2)
    response.should have_tag("tr>td", "value for base_channel_name".to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", false.to_s, 2)
  end
end
