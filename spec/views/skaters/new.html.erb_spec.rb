require 'rails_helper'

RSpec.describe "skaters/new", type: :view do
  before(:each) do
    assign(:skater, Skater.new(
      f_name: "MyString",
      l_name: "MyString"
    ))
  end

  it "renders new skater form" do
    render

    assert_select "form[action=?][method=?]", skaters_path, "post" do

      assert_select "input[name=?]", "skater[f_name]"

      assert_select "input[name=?]", "skater[l_name]"
    end
  end
end
