require 'rails_helper'

RSpec.describe "home_pages/show", type: :view do
  before(:each) do
    @home_page = assign(:home_page, HomePage.create!(
      :greeting_string => "Greeting String",
      :visits => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Greeting String/)
    expect(rendered).to match(/2/)
  end
end
