require 'spec_helper'

describe "events/new" do
  before(:each) do
    assign(:event, stub_model(Event,
      :description => "MyText",
      :title => "MyString",
      :rsvp_link => "MyString",
      :event_type => nil
    ).as_new_record)
  end

  it "renders new event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", events_path, "post" do
      assert_select "textarea#event_description[name=?]", "event[description]"
      assert_select "input#event_title[name=?]", "event[title]"
      assert_select "input#event_rsvp_link[name=?]", "event[rsvp_link]"
      assert_select "input#event_event_type[name=?]", "event[event_type]"
    end
  end
end
