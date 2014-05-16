require 'spec_helper'

describe "events/edit" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :description => "MyText",
      :title => "MyString",
      :rsvp_link => "MyString",
      :event_type => nil
    ))
  end

  it "renders the edit event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", event_path(@event), "post" do
      assert_select "textarea#event_description[name=?]", "event[description]"
      assert_select "input#event_title[name=?]", "event[title]"
      assert_select "input#event_rsvp_link[name=?]", "event[rsvp_link]"
      assert_select "input#event_event_type[name=?]", "event[event_type]"
    end
  end
end
