require 'rails_helper'

RSpec.describe "home_pages/new", type: :view do
  before(:each) do
    assign(:home_page, HomePage.new(
      :greeting_string => "MyString",
      :visits => 1
    ))
  end

  it "renders new home_page form" do
    render

    assert_select "form[action=?][method=?]", home_pages_path, "post" do

      assert_select "input#home_page_greeting_string[name=?]", "home_page[greeting_string]"

      assert_select "input#home_page_visits[name=?]", "home_page[visits]"
    end
  end
end
