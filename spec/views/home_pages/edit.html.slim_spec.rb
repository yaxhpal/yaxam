require 'rails_helper'

RSpec.describe "home_pages/edit", type: :view do
  before(:each) do
    @home_page = assign(:home_page, HomePage.create!(
      :greeting_string => "MyString",
      :visits => 1
    ))
  end

  it "renders the edit home_page form" do
    render

    assert_select "form[action=?][method=?]", home_page_path(@home_page), "post" do

      assert_select "input#home_page_greeting_string[name=?]", "home_page[greeting_string]"

      assert_select "input#home_page_visits[name=?]", "home_page[visits]"
    end
  end
end
