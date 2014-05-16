require 'spec_helper'

describe "sponsors/new" do
  before(:each) do
    assign(:sponsor, stub_model(Sponsor,
      :name => "MyString",
      :logo_url => "MyString"
    ).as_new_record)
  end

  it "renders new sponsor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sponsors_path, "post" do
      assert_select "input#sponsor_name[name=?]", "sponsor[name]"
      assert_select "input#sponsor_logo_url[name=?]", "sponsor[logo_url]"
    end
  end
end
