require 'rails_helper'

RSpec.describe "home_pages/index", type: :view do
  before(:each) do
    assign(:home_pages, [
      HomePage.create!(
        :greeting_string => "Greeting String",
        :visits => 2
      ),
      HomePage.create!(
        :greeting_string => "Greeting String",
        :visits => 2
      )
    ])
  end

  it "renders a list of home_pages" do
    render
    assert_select "tr>td", :text => "Greeting String".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
