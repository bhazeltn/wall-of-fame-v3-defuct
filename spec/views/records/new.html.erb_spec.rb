require 'rails_helper'

RSpec.describe "records/new", type: :view do
  before(:each) do
    assign(:record, Record.new(
      level: "MyString",
      segment: "MyString",
      score_type: "MyString",
      score: 1.5,
      competition: "MyString"
    ))
  end

  it "renders new record form" do
    render

    assert_select "form[action=?][method=?]", records_path, "post" do

      assert_select "input[name=?]", "record[level]"

      assert_select "input[name=?]", "record[segment]"

      assert_select "input[name=?]", "record[score_type]"

      assert_select "input[name=?]", "record[score]"

      assert_select "input[name=?]", "record[competition]"
    end
  end
end
