require 'spec_helper'

describe "sponsors/edit" do
  before(:each) do
    @sponsor = assign(:sponsor, stub_model(Sponsor,
      :name => "MyString",
      :logo_url => "MyString"
    ))
  end

  it "renders the edit sponsor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sponsor_path(@sponsor), "post" do
      assert_select "input#sponsor_name[name=?]", "sponsor[name]"
      assert_select "input#sponsor_logo_url[name=?]", "sponsor[logo_url]"
    end
  end
end
