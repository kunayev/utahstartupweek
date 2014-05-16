require 'spec_helper'

describe "events/index" do
  before(:each) do
    assign(:events, [
      stub_model(Event,
        :description => "MyText",
        :title => "Title",
        :rsvp_link => "Rsvp Link",
        :event_type => nil
      ),
      stub_model(Event,
        :description => "MyText",
        :title => "Title",
        :rsvp_link => "Rsvp Link",
        :event_type => nil
      )
    ])
  end

  it "renders a list of events" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Rsvp Link".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
