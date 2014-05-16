require 'spec_helper'

describe "events/show" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :description => "MyText",
      :title => "Title",
      :rsvp_link => "Rsvp Link",
      :event_type => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/Title/)
    rendered.should match(/Rsvp Link/)
    rendered.should match(//)
  end
end
