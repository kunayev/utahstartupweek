require 'spec_helper'

describe "sponsors/show" do
  before(:each) do
    @sponsor = assign(:sponsor, stub_model(Sponsor,
      :name => "Name",
      :logo_url => "Logo Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Logo Url/)
  end
end
